import 'package:api_test/bloc/user_bloc.dart';
import 'package:api_test/repository/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        child: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(
        RepositoryProvider.of<UserRepository>(context),
      )..add(const UserEvent.loadUser()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Test Using Bloc and Frezzed'),
        ),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            print('đây là state: $state');
            return state.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (users) => ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (_, index) {
                    //nếu để chữ context thay cho _ thì sao?
                    return Card(
                      color: Colors.deepPurpleAccent,
                      elevation: 4,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        title: Text(
                          users[index].first_name,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          users[index].last_name,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: CircleAvatar(
                          backgroundImage: NetworkImage(users[index].avatar),
                        ),
                      ),
                    );
                  }),
              loadError: (messenge) => Center(child: Text(messenge)),
            );
          },
        ),
      ),
    );
  }
}
