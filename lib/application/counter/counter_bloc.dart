import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:web_form/application/core/application_status.dart';
import 'package:web_form/domain/counter/counter_value_objects.dart';
import 'package:web_form/domain/counter/i_counter_service.dart';

part 'counter_bloc.freezed.dart';
part 'counter_event.dart';
part 'counter_state.dart';

@injectable
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final ICounterService _counterService;

  CounterBloc(this._counterService);

  StreamSubscription<Counter> _streamSubscription;

  @override
  CounterState get initialState => CounterState.initial();

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    yield* event.map(
      increment: (e) async* {
        var newValue = await _counterService.increment(state.counter);
        yield state.copyWith(counter: newValue);
      },
      decrement: (e) async* {
        var newValue = await _counterService.decrement(state.counter);
        yield state.copyWith(counter: newValue);
      },
      loadCounter: (e) async* {
        yield state.copyWith(state: ApplicationStatus.loading());
        var newValue = await _counterService.load();
        yield state.copyWith(
            loadedCounter: newValue, state: ApplicationStatus.normal());
      },
      setWatchCounter: (e) async* {
        yield state.copyWith(watchedCounter: e.counter);
      },
      watchCounter: (e) async* {
        await _streamSubscription?.cancel();
        _streamSubscription = _counterService.watch().listen((counter) {
          add(CounterEvent.setWatchCounter(counter));
        });
      },
    );
  }
}
