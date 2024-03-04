part of 'counter_bloc.dart';

@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.started() = Started;
  const factory CounterEvent.reset() = Reset;
  const factory CounterEvent.increment() = Increment;
  const factory CounterEvent.decrement() = Decrement;
}
