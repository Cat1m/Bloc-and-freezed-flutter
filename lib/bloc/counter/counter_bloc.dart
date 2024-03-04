import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_event.dart';
part 'counter_state.dart';
part 'counter_bloc.freezed.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const _Initial()) {
    on<Started>((event, emit) async {
      await Future.delayed(const Duration(seconds: 1));
      emit(const CounterState.loaded(counter: 0));
    });

    on<Reset>((event, emit) async {
      emit(const CounterState.loading());
      await Future.delayed(const Duration(seconds: 1));
      emit(const CounterState.loaded(counter: 0));
    });

    on<Increment>((event, emit) async {
      if (state is _Loaded) {
        final counter = (state as _Loaded).counter;
        emit(const CounterState.loading());

        emit(CounterState.loaded(counter: counter + 1));
      }
    });

    on<Decrement>((event, emit) async {
      if (state is _Loaded) {
        final counter = (state as _Loaded).counter;
        emit(const CounterState.loading());
        if (counter > 0) {
          emit(CounterState.loaded(counter: counter - 1));
        } else {
          emit(const CounterState.loaded(counter: 0));
        }
      }
    });
  }
}
