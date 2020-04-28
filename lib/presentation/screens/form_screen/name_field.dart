import 'package:flutter/material.dart';
import 'package:web_form/application/core/application_status.dart';
import 'package:web_form/application/form/form_bloc.dart';
import 'package:web_form/domain/core/value_object.dart';
import 'package:web_form/presentation/screens/core/text_field.dart';

class NameTextField extends CoreTextField<FormBloc, FormBlocState> {
  @override
  String getLabelText(BuildContext context) => "Name";

  @override
  ValueObject<String> getValueObject(FormBlocState state) => state.name;

  @override
  ApplicationStatus getStatus(FormBlocState state) => state.applicationStatus;

  @override
  void onChanged(String value, FormBloc bloc) {
    bloc.add(FormBlocEvent.changeName(value));
  }

  @override
  Icon prefixIcon() => const Icon(Icons.person);

  @override
  String getResultError(FormBlocState state) => state.result.fold(
        () => null,
        (a) => a.fold(
          (l) => l.maybeMap(
            nameInvalid: (_) => 'Invalid name from the server',
            orElse: () => null,
          ),
          (r) => null,
        ),
      );
}
