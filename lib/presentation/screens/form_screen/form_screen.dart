import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_form/application/form/form_bloc.dart';
import 'package:web_form/domain/counter/counter_value_objects.dart';
import 'package:web_form/injection.dart';
import 'package:web_form/presentation/screens/form_screen/another_field.dart';
import 'package:web_form/presentation/screens/form_screen/name_field.dart';

class FormScreen extends StatelessWidget implements AutoRouteWrapper {
  final Counter initialValue;

  @override
  Widget get wrappedRoute => BlocProvider(
        create: (context) =>
            getIt<FormBloc>()..add(FormBlocEvent.initialized(initialValue)),
        child: this,
      );

  FormScreen({Key key, this.initialValue, this.title = "Form Screen"})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Form(
          autovalidate: true,
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
              NameField(),
              AnotherField(),
            ],
          ),
        ));
  }
}
