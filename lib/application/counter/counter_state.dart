part of 'counter_bloc.dart';

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState({
    @required Counter counter,
  }) = _CounterState;

  factory CounterState.initial() => CounterState(counter: Counter(0));
}
