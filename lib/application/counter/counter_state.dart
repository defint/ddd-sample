part of 'counter_bloc.dart';

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState({
    @required Counter counter,
    @required Counter loadedCounter,
    @required Counter watchedCounter,
    @required ApplicationStatus state,
  }) = _CounterState;

  factory CounterState.initial() => CounterState(
        counter: Counter(0),
        loadedCounter: Counter(0),
        watchedCounter: Counter(0),
        state: ApplicationStatus.normal(),
      );
}
