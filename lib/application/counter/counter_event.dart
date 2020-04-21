part of 'counter_bloc.dart';

@freezed
abstract class CounterEvent with _$CounterEvent {
  const factory CounterEvent.increment() = Increment;
  const factory CounterEvent.decrement() = Decrement;
  const factory CounterEvent.loadCounter() = LoadCounter;
  const factory CounterEvent.watchCounter() = WatchCounter;
  const factory CounterEvent.setWatchCounter(Counter counter) = SetWatchCounter;
}
