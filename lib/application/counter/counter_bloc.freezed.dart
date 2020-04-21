// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CounterEventTearOff {
  const _$CounterEventTearOff();

  Increment increment() {
    return const Increment();
  }

  Decrement decrement() {
    return const Decrement();
  }

  LoadCounter loadCounter() {
    return const LoadCounter();
  }

  WatchCounter watchCounter() {
    return const WatchCounter();
  }

  SetWatchCounter setWatchCounter(Counter counter) {
    return SetWatchCounter(
      counter,
    );
  }
}

// ignore: unused_element
const $CounterEvent = _$CounterEventTearOff();

mixin _$CounterEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result increment(),
    @required Result decrement(),
    @required Result loadCounter(),
    @required Result watchCounter(),
    @required Result setWatchCounter(Counter counter),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result increment(),
    Result decrement(),
    Result loadCounter(),
    Result watchCounter(),
    Result setWatchCounter(Counter counter),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result increment(Increment value),
    @required Result decrement(Decrement value),
    @required Result loadCounter(LoadCounter value),
    @required Result watchCounter(WatchCounter value),
    @required Result setWatchCounter(SetWatchCounter value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result increment(Increment value),
    Result decrement(Decrement value),
    Result loadCounter(LoadCounter value),
    Result watchCounter(WatchCounter value),
    Result setWatchCounter(SetWatchCounter value),
    @required Result orElse(),
  });
}

abstract class $CounterEventCopyWith<$Res> {
  factory $CounterEventCopyWith(
          CounterEvent value, $Res Function(CounterEvent) then) =
      _$CounterEventCopyWithImpl<$Res>;
}

class _$CounterEventCopyWithImpl<$Res> implements $CounterEventCopyWith<$Res> {
  _$CounterEventCopyWithImpl(this._value, this._then);

  final CounterEvent _value;
  // ignore: unused_field
  final $Res Function(CounterEvent) _then;
}

abstract class $IncrementCopyWith<$Res> {
  factory $IncrementCopyWith(Increment value, $Res Function(Increment) then) =
      _$IncrementCopyWithImpl<$Res>;
}

class _$IncrementCopyWithImpl<$Res> extends _$CounterEventCopyWithImpl<$Res>
    implements $IncrementCopyWith<$Res> {
  _$IncrementCopyWithImpl(Increment _value, $Res Function(Increment) _then)
      : super(_value, (v) => _then(v as Increment));

  @override
  Increment get _value => super._value as Increment;
}

class _$Increment implements Increment {
  const _$Increment();

  @override
  String toString() {
    return 'CounterEvent.increment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Increment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result increment(),
    @required Result decrement(),
    @required Result loadCounter(),
    @required Result watchCounter(),
    @required Result setWatchCounter(Counter counter),
  }) {
    assert(increment != null);
    assert(decrement != null);
    assert(loadCounter != null);
    assert(watchCounter != null);
    assert(setWatchCounter != null);
    return increment();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result increment(),
    Result decrement(),
    Result loadCounter(),
    Result watchCounter(),
    Result setWatchCounter(Counter counter),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (increment != null) {
      return increment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result increment(Increment value),
    @required Result decrement(Decrement value),
    @required Result loadCounter(LoadCounter value),
    @required Result watchCounter(WatchCounter value),
    @required Result setWatchCounter(SetWatchCounter value),
  }) {
    assert(increment != null);
    assert(decrement != null);
    assert(loadCounter != null);
    assert(watchCounter != null);
    assert(setWatchCounter != null);
    return increment(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result increment(Increment value),
    Result decrement(Decrement value),
    Result loadCounter(LoadCounter value),
    Result watchCounter(WatchCounter value),
    Result setWatchCounter(SetWatchCounter value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class Increment implements CounterEvent {
  const factory Increment() = _$Increment;
}

abstract class $DecrementCopyWith<$Res> {
  factory $DecrementCopyWith(Decrement value, $Res Function(Decrement) then) =
      _$DecrementCopyWithImpl<$Res>;
}

class _$DecrementCopyWithImpl<$Res> extends _$CounterEventCopyWithImpl<$Res>
    implements $DecrementCopyWith<$Res> {
  _$DecrementCopyWithImpl(Decrement _value, $Res Function(Decrement) _then)
      : super(_value, (v) => _then(v as Decrement));

  @override
  Decrement get _value => super._value as Decrement;
}

class _$Decrement implements Decrement {
  const _$Decrement();

  @override
  String toString() {
    return 'CounterEvent.decrement()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Decrement);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result increment(),
    @required Result decrement(),
    @required Result loadCounter(),
    @required Result watchCounter(),
    @required Result setWatchCounter(Counter counter),
  }) {
    assert(increment != null);
    assert(decrement != null);
    assert(loadCounter != null);
    assert(watchCounter != null);
    assert(setWatchCounter != null);
    return decrement();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result increment(),
    Result decrement(),
    Result loadCounter(),
    Result watchCounter(),
    Result setWatchCounter(Counter counter),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (decrement != null) {
      return decrement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result increment(Increment value),
    @required Result decrement(Decrement value),
    @required Result loadCounter(LoadCounter value),
    @required Result watchCounter(WatchCounter value),
    @required Result setWatchCounter(SetWatchCounter value),
  }) {
    assert(increment != null);
    assert(decrement != null);
    assert(loadCounter != null);
    assert(watchCounter != null);
    assert(setWatchCounter != null);
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result increment(Increment value),
    Result decrement(Decrement value),
    Result loadCounter(LoadCounter value),
    Result watchCounter(WatchCounter value),
    Result setWatchCounter(SetWatchCounter value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class Decrement implements CounterEvent {
  const factory Decrement() = _$Decrement;
}

abstract class $LoadCounterCopyWith<$Res> {
  factory $LoadCounterCopyWith(
          LoadCounter value, $Res Function(LoadCounter) then) =
      _$LoadCounterCopyWithImpl<$Res>;
}

class _$LoadCounterCopyWithImpl<$Res> extends _$CounterEventCopyWithImpl<$Res>
    implements $LoadCounterCopyWith<$Res> {
  _$LoadCounterCopyWithImpl(
      LoadCounter _value, $Res Function(LoadCounter) _then)
      : super(_value, (v) => _then(v as LoadCounter));

  @override
  LoadCounter get _value => super._value as LoadCounter;
}

class _$LoadCounter implements LoadCounter {
  const _$LoadCounter();

  @override
  String toString() {
    return 'CounterEvent.loadCounter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadCounter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result increment(),
    @required Result decrement(),
    @required Result loadCounter(),
    @required Result watchCounter(),
    @required Result setWatchCounter(Counter counter),
  }) {
    assert(increment != null);
    assert(decrement != null);
    assert(loadCounter != null);
    assert(watchCounter != null);
    assert(setWatchCounter != null);
    return loadCounter();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result increment(),
    Result decrement(),
    Result loadCounter(),
    Result watchCounter(),
    Result setWatchCounter(Counter counter),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadCounter != null) {
      return loadCounter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result increment(Increment value),
    @required Result decrement(Decrement value),
    @required Result loadCounter(LoadCounter value),
    @required Result watchCounter(WatchCounter value),
    @required Result setWatchCounter(SetWatchCounter value),
  }) {
    assert(increment != null);
    assert(decrement != null);
    assert(loadCounter != null);
    assert(watchCounter != null);
    assert(setWatchCounter != null);
    return loadCounter(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result increment(Increment value),
    Result decrement(Decrement value),
    Result loadCounter(LoadCounter value),
    Result watchCounter(WatchCounter value),
    Result setWatchCounter(SetWatchCounter value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadCounter != null) {
      return loadCounter(this);
    }
    return orElse();
  }
}

abstract class LoadCounter implements CounterEvent {
  const factory LoadCounter() = _$LoadCounter;
}

abstract class $WatchCounterCopyWith<$Res> {
  factory $WatchCounterCopyWith(
          WatchCounter value, $Res Function(WatchCounter) then) =
      _$WatchCounterCopyWithImpl<$Res>;
}

class _$WatchCounterCopyWithImpl<$Res> extends _$CounterEventCopyWithImpl<$Res>
    implements $WatchCounterCopyWith<$Res> {
  _$WatchCounterCopyWithImpl(
      WatchCounter _value, $Res Function(WatchCounter) _then)
      : super(_value, (v) => _then(v as WatchCounter));

  @override
  WatchCounter get _value => super._value as WatchCounter;
}

class _$WatchCounter implements WatchCounter {
  const _$WatchCounter();

  @override
  String toString() {
    return 'CounterEvent.watchCounter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchCounter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result increment(),
    @required Result decrement(),
    @required Result loadCounter(),
    @required Result watchCounter(),
    @required Result setWatchCounter(Counter counter),
  }) {
    assert(increment != null);
    assert(decrement != null);
    assert(loadCounter != null);
    assert(watchCounter != null);
    assert(setWatchCounter != null);
    return watchCounter();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result increment(),
    Result decrement(),
    Result loadCounter(),
    Result watchCounter(),
    Result setWatchCounter(Counter counter),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchCounter != null) {
      return watchCounter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result increment(Increment value),
    @required Result decrement(Decrement value),
    @required Result loadCounter(LoadCounter value),
    @required Result watchCounter(WatchCounter value),
    @required Result setWatchCounter(SetWatchCounter value),
  }) {
    assert(increment != null);
    assert(decrement != null);
    assert(loadCounter != null);
    assert(watchCounter != null);
    assert(setWatchCounter != null);
    return watchCounter(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result increment(Increment value),
    Result decrement(Decrement value),
    Result loadCounter(LoadCounter value),
    Result watchCounter(WatchCounter value),
    Result setWatchCounter(SetWatchCounter value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchCounter != null) {
      return watchCounter(this);
    }
    return orElse();
  }
}

abstract class WatchCounter implements CounterEvent {
  const factory WatchCounter() = _$WatchCounter;
}

abstract class $SetWatchCounterCopyWith<$Res> {
  factory $SetWatchCounterCopyWith(
          SetWatchCounter value, $Res Function(SetWatchCounter) then) =
      _$SetWatchCounterCopyWithImpl<$Res>;
  $Res call({Counter counter});
}

class _$SetWatchCounterCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res>
    implements $SetWatchCounterCopyWith<$Res> {
  _$SetWatchCounterCopyWithImpl(
      SetWatchCounter _value, $Res Function(SetWatchCounter) _then)
      : super(_value, (v) => _then(v as SetWatchCounter));

  @override
  SetWatchCounter get _value => super._value as SetWatchCounter;

  @override
  $Res call({
    Object counter = freezed,
  }) {
    return _then(SetWatchCounter(
      counter == freezed ? _value.counter : counter as Counter,
    ));
  }
}

class _$SetWatchCounter implements SetWatchCounter {
  const _$SetWatchCounter(this.counter) : assert(counter != null);

  @override
  final Counter counter;

  @override
  String toString() {
    return 'CounterEvent.setWatchCounter(counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetWatchCounter &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality().equals(other.counter, counter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(counter);

  @override
  $SetWatchCounterCopyWith<SetWatchCounter> get copyWith =>
      _$SetWatchCounterCopyWithImpl<SetWatchCounter>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result increment(),
    @required Result decrement(),
    @required Result loadCounter(),
    @required Result watchCounter(),
    @required Result setWatchCounter(Counter counter),
  }) {
    assert(increment != null);
    assert(decrement != null);
    assert(loadCounter != null);
    assert(watchCounter != null);
    assert(setWatchCounter != null);
    return setWatchCounter(counter);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result increment(),
    Result decrement(),
    Result loadCounter(),
    Result watchCounter(),
    Result setWatchCounter(Counter counter),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setWatchCounter != null) {
      return setWatchCounter(counter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result increment(Increment value),
    @required Result decrement(Decrement value),
    @required Result loadCounter(LoadCounter value),
    @required Result watchCounter(WatchCounter value),
    @required Result setWatchCounter(SetWatchCounter value),
  }) {
    assert(increment != null);
    assert(decrement != null);
    assert(loadCounter != null);
    assert(watchCounter != null);
    assert(setWatchCounter != null);
    return setWatchCounter(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result increment(Increment value),
    Result decrement(Decrement value),
    Result loadCounter(LoadCounter value),
    Result watchCounter(WatchCounter value),
    Result setWatchCounter(SetWatchCounter value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setWatchCounter != null) {
      return setWatchCounter(this);
    }
    return orElse();
  }
}

abstract class SetWatchCounter implements CounterEvent {
  const factory SetWatchCounter(Counter counter) = _$SetWatchCounter;

  Counter get counter;
  $SetWatchCounterCopyWith<SetWatchCounter> get copyWith;
}

class _$CounterStateTearOff {
  const _$CounterStateTearOff();

  _CounterState call(
      {@required Counter counter,
      @required Counter loadedCounter,
      @required Counter watchedCounter,
      @required ApplicationStatus state}) {
    return _CounterState(
      counter: counter,
      loadedCounter: loadedCounter,
      watchedCounter: watchedCounter,
      state: state,
    );
  }
}

// ignore: unused_element
const $CounterState = _$CounterStateTearOff();

mixin _$CounterState {
  Counter get counter;
  Counter get loadedCounter;
  Counter get watchedCounter;
  ApplicationStatus get state;

  $CounterStateCopyWith<CounterState> get copyWith;
}

abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res>;
  $Res call(
      {Counter counter,
      Counter loadedCounter,
      Counter watchedCounter,
      ApplicationStatus state});

  $ApplicationStatusCopyWith<$Res> get state;
}

class _$CounterStateCopyWithImpl<$Res> implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  final CounterState _value;
  // ignore: unused_field
  final $Res Function(CounterState) _then;

  @override
  $Res call({
    Object counter = freezed,
    Object loadedCounter = freezed,
    Object watchedCounter = freezed,
    Object state = freezed,
  }) {
    return _then(_value.copyWith(
      counter: counter == freezed ? _value.counter : counter as Counter,
      loadedCounter: loadedCounter == freezed
          ? _value.loadedCounter
          : loadedCounter as Counter,
      watchedCounter: watchedCounter == freezed
          ? _value.watchedCounter
          : watchedCounter as Counter,
      state: state == freezed ? _value.state : state as ApplicationStatus,
    ));
  }

  @override
  $ApplicationStatusCopyWith<$Res> get state {
    if (_value.state == null) {
      return null;
    }
    return $ApplicationStatusCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

abstract class _$CounterStateCopyWith<$Res>
    implements $CounterStateCopyWith<$Res> {
  factory _$CounterStateCopyWith(
          _CounterState value, $Res Function(_CounterState) then) =
      __$CounterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Counter counter,
      Counter loadedCounter,
      Counter watchedCounter,
      ApplicationStatus state});

  @override
  $ApplicationStatusCopyWith<$Res> get state;
}

class __$CounterStateCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res>
    implements _$CounterStateCopyWith<$Res> {
  __$CounterStateCopyWithImpl(
      _CounterState _value, $Res Function(_CounterState) _then)
      : super(_value, (v) => _then(v as _CounterState));

  @override
  _CounterState get _value => super._value as _CounterState;

  @override
  $Res call({
    Object counter = freezed,
    Object loadedCounter = freezed,
    Object watchedCounter = freezed,
    Object state = freezed,
  }) {
    return _then(_CounterState(
      counter: counter == freezed ? _value.counter : counter as Counter,
      loadedCounter: loadedCounter == freezed
          ? _value.loadedCounter
          : loadedCounter as Counter,
      watchedCounter: watchedCounter == freezed
          ? _value.watchedCounter
          : watchedCounter as Counter,
      state: state == freezed ? _value.state : state as ApplicationStatus,
    ));
  }
}

class _$_CounterState implements _CounterState {
  const _$_CounterState(
      {@required this.counter,
      @required this.loadedCounter,
      @required this.watchedCounter,
      @required this.state})
      : assert(counter != null),
        assert(loadedCounter != null),
        assert(watchedCounter != null),
        assert(state != null);

  @override
  final Counter counter;
  @override
  final Counter loadedCounter;
  @override
  final Counter watchedCounter;
  @override
  final ApplicationStatus state;

  @override
  String toString() {
    return 'CounterState(counter: $counter, loadedCounter: $loadedCounter, watchedCounter: $watchedCounter, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CounterState &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality()
                    .equals(other.counter, counter)) &&
            (identical(other.loadedCounter, loadedCounter) ||
                const DeepCollectionEquality()
                    .equals(other.loadedCounter, loadedCounter)) &&
            (identical(other.watchedCounter, watchedCounter) ||
                const DeepCollectionEquality()
                    .equals(other.watchedCounter, watchedCounter)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(counter) ^
      const DeepCollectionEquality().hash(loadedCounter) ^
      const DeepCollectionEquality().hash(watchedCounter) ^
      const DeepCollectionEquality().hash(state);

  @override
  _$CounterStateCopyWith<_CounterState> get copyWith =>
      __$CounterStateCopyWithImpl<_CounterState>(this, _$identity);
}

abstract class _CounterState implements CounterState {
  const factory _CounterState(
      {@required Counter counter,
      @required Counter loadedCounter,
      @required Counter watchedCounter,
      @required ApplicationStatus state}) = _$_CounterState;

  @override
  Counter get counter;
  @override
  Counter get loadedCounter;
  @override
  Counter get watchedCounter;
  @override
  ApplicationStatus get state;
  @override
  _$CounterStateCopyWith<_CounterState> get copyWith;
}
