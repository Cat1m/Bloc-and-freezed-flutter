import 'package:api_test/bloc/counter/counter_bloc.dart';
import 'package:api_test/bloc/doctor/doctor_bloc.dart';
import 'package:api_test/bloc/user/user_bloc.dart';
import 'package:api_test/utils/print_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'repository/repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => UserRepository(),
          ),
          RepositoryProvider(
            create: (context) => BacSiRepository(),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  CounterBloc()..add(const CounterEvent.started()),
            ),
            BlocProvider(
              create: (context) =>
                  UserBloc(RepositoryProvider.of<UserRepository>(context))
                    ..add(const UserEvent.loadUser()),
            ),
            BlocProvider(
              create: (context) =>
                  DoctorBloc(RepositoryProvider.of<BacSiRepository>(context))
                    ..add(const DoctorEvent.fetchDoctor()),
            ),
          ],
          child: const Home(),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Using Bloc and Freezed'),
      ),
      body: const _ListDoctor(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () => context
                  .read<CounterBloc>()
                  .add(const CounterEvent.increment()),
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                final counterState = context.read<CounterBloc>().state;
                final int counter = counterState.maybeWhen(
                  loaded: (counter) => counter,
                  orElse: () => 0,
                );

                if (counter > 0) {
                  context
                      .read<CounterBloc>()
                      .add(const CounterEvent.decrement());
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Alert'),
                        content: const Text('Cannot decrement below 0!'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () =>
                  context.read<CounterBloc>().add(const CounterEvent.reset()),
              child: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}

class _ListDoctor extends StatelessWidget {
  const _ListDoctor();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<DoctorBloc>().state;

    return state.when(
      loaded: (doctors) => ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(doctors[index].TenBacSi),
            ),
          );
        },
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      loadError: (String messenge) => Center(
        child: Text(messenge),
      ),
    );
  }
}

class _ListUser extends StatelessWidget {
  const _ListUser();

  @override
  Widget build(BuildContext context) {
    final userState = context.watch<UserBloc>().state;

    return userState.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      loaded: (users) => ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.deepPurpleAccent,
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              title: Text(
                users[index].first_name,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                users[index].last_name,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: CircleAvatar(
                backgroundImage: NetworkImage(users[index].avatar),
              ),
            ),
          );
        },
      ),
      loadError: (String messenge) => Center(
        child: Text(messenge),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 1));
        context.read<UserBloc>().add(const UserEvent.loadUser());
      },
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: _CounterText(),
          ),
          BlocBuilder<UserBloc, UserState>(
            builder: (context, userState) {
              final counterState = context.watch<CounterBloc>().state;

              return userState.when(
                loading: () => const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                loaded: (users) {
                  final itemCount = counterState.maybeWhen(
                    loaded: (counter) =>
                        counter < users.length ? counter : users.length,
                    orElse: () => 0,
                  );

                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Card(
                          color: Colors.deepPurpleAccent,
                          elevation: 4,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            title: Text(
                              users[index].first_name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              users[index].last_name,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            trailing: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(users[index].avatar),
                            ),
                          ),
                        );
                      },
                      childCount: itemCount >= 0
                          ? itemCount
                          : 0, // Đảm bảo itemCount không nhỏ hơn 0
                    ),
                  );
                },
                loadError: (messenge) => SliverFillRemaining(
                  child: Center(child: Text(messenge)),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _CounterText extends StatelessWidget {
  const _CounterText();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CounterBloc>().state;
    ConsolePrint.log('$state');
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.blueAccent,
      child: state.when(
        initial: () => const Center(
          child: FlutterLogo(
            size: 69,
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        loaded: (counter) => Center(
          child: Text(
            '$counter',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}

// class _HomeBody2 extends StatelessWidget {
//   const _HomeBody2();

//   @override
//   Widget build(BuildContext context) {
//     return RefreshIndicator(
//       onRefresh: () async {
//         await Future.delayed(const Duration(seconds: 1));
//         context.read<DoctorBloc>().add(const DoctorEvent.fetchDoctor());
//       },
//       child: CustomScrollView(
//         slivers: <Widget>[
//           const SliverToBoxAdapter(
//             child: _CounterText(),
//           ),
//           BlocBuilder<DoctorBloc, DoctorState>(
//             builder: (context, doctorState) {
//               final counterState = context.watch<CounterBloc>().state;

//               return doctorState.when(
//                 loading: () => const SliverFillRemaining(
//                   child: Center(
//                     child: CircularProgressIndicator(),
//                   ),
//                 ),
//                 loaded: (doctors) {
//                   final itemCount = counterState.maybeWhen(
//                     loaded: (counter) =>
//                         counter < doctors.length ? counter : doctors.length,
//                     orElse: () => 0,
//                   );

//                   return SliverList(
//                     delegate: SliverChildBuilderDelegate(
//                       (BuildContext context, int index) {
//                         return Card(
//                           color: Colors.deepPurpleAccent,
//                           elevation: 4,
//                           margin: const EdgeInsets.symmetric(vertical: 10),
//                           child: ListTile(
//                             title: Text(
//                               doctors[index]
//                                   .Status, // Thay đổi từ first_name thành tenBacSi
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             subtitle: Text(
//                               doctors[index]
//                                   .Message, // Thay đổi từ last_name thành hinhAnh
//                               style: const TextStyle(
//                                 color: Colors.white,
//                               ),
//                             ),
//                             // trailing: CircleAvatar(
//                             //   backgroundImage:
//                             //       NetworkImage(doctors[index].hi),
//                             // ),
//                           ),
//                         );
//                       },
//                       childCount: itemCount >= 0
//                           ? itemCount
//                           : 0, // Đảm bảo itemCount không nhỏ hơn 0
//                     ),
//                   );
//                 },
//                 loadError: (messenge) => SliverFillRemaining(
//                   child: Center(child: Text(messenge)),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
