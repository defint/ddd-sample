import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:web_form/application/core/application_status.dart';
import 'package:web_form/domain/core/backend_failure.dart';
import 'package:web_form/domain/core/value_object.dart';
import 'package:web_form/domain/counter/counter_value_objects.dart';
import 'package:web_form/domain/counter/i_counter_service.dart';
import 'package:web_form/domain/form/form_value_objects.dart';

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
        yield initialState;
        add(FormBlocEvent.changeName(
            e.counter.value.getOrElse(() => 0).toString()));
      },
      changeName: (e) async* {
        yield state.copyWith(
          name: Name(e.name),
          doubledName: Name("${e.name}${e.name}"),
        );
      },
      changePosition: (e) async* {
        yield state.copyWith(
          position: Position(e.position),
        );

        add(const FormBlocEvent.validatePosition());
      },
      validatePosition: (e) async* {
        await Future.delayed(const Duration(milliseconds: 300));

        final pos = state.position.value.fold(
            (l) => l.maybeMap(
                  customError: (e) => e.failedValue,
                  orElse: () => null,
                ),
            (r) => r);

        if (pos != null && pos.contains("a")) {
          yield state.copyWith(
            position: Position.withCustomError(
              pos,
              customError: "Async validation error",
            ),
          );
        }
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
          applicationStatus: const ApplicationStatus.formValidating(),
          result: none(),
        );

        final hasInvalid = FormBlocState.getValidatedFields(state).firstWhere(
          (element) => !element.isValid(),
          orElse: () => null,
        );

        if (hasInvalid != null) {
          return;
        }

        yield state.copyWith(
          applicationStatus: const ApplicationStatus.formSubmitting(),
        );
        final result = await _counterService.submit(
          name: state.name,
          doubledName: state.doubledName,
        );
        yield state.copyWith(
          applicationStatus: const ApplicationStatus.formSubmitted(),
          result: some(result),
        );
      },
    );
  }
}
