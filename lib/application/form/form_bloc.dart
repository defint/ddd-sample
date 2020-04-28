import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:web_form/domain/core/backend_failure.dart';
import 'package:web_form/domain/counter/counter_value_objects.dart';
import 'package:web_form/domain/counter/i_counter_service.dart';

part 'form_bloc.freezed.dart';
part 'form_event.dart';
part 'form_state.dart';

@injectable
class FormBloc extends Bloc<FormBlocEvent, FormBlocState> {
  final ICounterService _counterService;

  FormBloc(this._counterService);

  @override
  FormBlocState get initialState => FormBlocState.initial();

  @override
  Stream<FormBlocState> mapEventToState(
    FormBlocEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        add(FormBlocEvent.changeName(
            e.counter.value.getOrElse(() => 0).toString()));
      },
      changeName: (e) async* {
        yield state.copyWith(
          name: Name(e.name),
          doubledName: Name("${e.name}${e.name}"),
        );
      },
      changeDoubledName: (e) async* {
        yield state.copyWith(
          doubledName: Name(
            e.doubledName,
            notEqual: state.name.value.getOrElse(() => null),
          ),
        );
      },
      submit: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          result: none(),
        );
        final result = await _counterService.submit(
          name: state.name,
          doubledName: state.doubledName,
        );
        yield state.copyWith(
          isSubmitting: false,
          result: some(result),
        );
      },
    );
  }
}
