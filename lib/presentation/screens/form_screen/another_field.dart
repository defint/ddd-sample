import 'package:flutter/material.dart';
import 'package:web_form/application/core/application_status.dart';
import 'package:web_form/application/form/form_bloc.dart';
import 'package:web_form/domain/core/value_object.dart';
import 'package:web_form/presentation/screens/core/text_field.dart';

class DoubledNameTextField extends CoreTextField<FormBloc, FormBlocState> {
  @override
  String getLabelText(BuildContext context) => "Doubled Name";

  @override
  ValueObject<String> getValueObject(FormBlocState state) => state.doubledName;

  @override
  ApplicationStatus getStatus(FormBlocState state) => state.applicationStatus;

  @override
  void onChanged(String value, FormBloc bloc) {
    bloc.add(FormBlocEvent.changeDoubledName(value));
  }

  @override
  Icon prefixIcon() => const Icon(Icons.people);
}
