import 'package:api_test/bloc/counter/counter_bloc.dart';
import 'package:api_test/utils/print_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterText extends StatelessWidget {
  const CounterText({super.key});

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
