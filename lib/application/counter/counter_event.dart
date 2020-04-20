part of 'counter_bloc.dart';

@freezed
abstract class CounterEvent with _$CounterEvent {
  const factory CounterEvent.increment() = Increment;
  const factory CounterEvent.decrement() = Decrement;
}
