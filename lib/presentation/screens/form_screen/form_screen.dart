import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_form/application/core/application_status.dart';
import 'package:web_form/application/form/form_bloc.dart';
import 'package:web_form/domain/counter/counter_value_objects.dart';
import 'package:web_form/injection.dart';
import 'package:web_form/presentation/routes/router.gr.dart';
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

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Form(
          key: _formKey,
          autovalidate: true,
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
              NameTextField(),
              Container(
                height: 20,
              ),
              DoubledNameTextField(),
              Container(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  context
                      .bloc<FormBloc>()
                      .add(FormBlocEvent.initialized(initialValue));
                },
                child: const Text("RESET"),
              ),
              BlocConsumer<FormBloc, FormBlocState>(
                  listener: (context, state) {
                    state.result.fold(
                      () => null,
                      (a) => a.fold(
                        (l) => null,
                        (r) => Router.navigator.pop(),
                      ),
                    );
                  },
                  buildWhen: (p, c) =>
                      p.applicationStatus != c.applicationStatus,
                  builder: (context, state) {
                    return RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          context.bloc<FormBloc>().add(FormBlocEvent.submit());
                        }
                      },
                      child: state.applicationStatus ==
                              const ApplicationStatus.formSubmitting()
                          ? const Text('Submitting...')
                          : const Text('SUBMIT'),
                    );
                  }),
            ],
          ),
        ));
  }
}
