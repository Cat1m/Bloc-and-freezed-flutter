import 'package:api_test/bloc/counter/counter_bloc.dart';
import 'package:api_test/bloc/doctor/doctor_bloc.dart';
import 'package:api_test/bloc/user/user_bloc.dart';
import 'package:api_test/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'repository/repository.dart';

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
