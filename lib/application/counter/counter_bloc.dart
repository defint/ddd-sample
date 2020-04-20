import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:web_form/application/core/state.dart';
import 'package:web_form/domain/counter/counter_value_objects.dart';
import 'package:web_form/domain/counter/i_counter_facade.dart';

part 'counter_bloc.freezed.dart';
part 'counter_event.dart';
part 'counter_state.dart';

@injectable
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final ICounterFacade _counterFacade;

  CounterBloc(this._counterFacade);

  @override
  CounterState get initialState => CounterState.initial();

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    yield* event.map(
      increment: (e) async* {
        var newValue = await _counterFacade.increment(state.counter);
        yield state.copyWith(counter: newValue);
      },
      decrement: (e) async* {
        var newValue = await _counterFacade.decrement(state.counter);
        yield state.copyWith(counter: newValue);
      },
      loadCounter: (e) async* {
        yield state.copyWith(state: State.LOADING);
        var newValue = await _counterFacade.load();
        yield state.copyWith(loadedCounter: newValue, state: State.NORMAL);
      },
    );
  }
}
