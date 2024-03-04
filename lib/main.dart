import 'package:api_test/bloc/counter/counter_bloc.dart';
import 'package:api_test/bloc/user/user_bloc.dart';
import 'package:api_test/repository/repositories.dart';
import 'package:api_test/utils/print_log.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RepositoryProvider(
        create: (context) => UserRepository(),
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
        title: const Text('Test Using Bloc and Frezzed'),
      ),
      body: const Column(
        children: [
          _CounterText(),
          Expanded(
            child: _ListUser(),
          ),
        ],
      ),
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
                  // Hiển thị alert thông báo không thể giảm bé hơn 0
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

class _ListUser extends StatelessWidget {
  const _ListUser();

  @override
  Widget build(BuildContext context) {
    final counterState = context.watch<CounterBloc>().state;
    final userState = context.watch<UserBloc>().state;

    return userState.when(
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
        loaded: (users) {
          final itemCount = counterState.maybeWhen(
            loaded: (counter) =>
                counter < users.length ? counter : users.length,
            orElse: () => 0,
          );

          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: itemCount >= 0
                ? itemCount
                : 0, // Đảm bảo itemCount không nhỏ hơn 0
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
          );
        },
        loadError: (messenge) => Center(child: Text(messenge)));
  }
}
