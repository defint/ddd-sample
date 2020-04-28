// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:web_form/infrastructure/counter/counter_mock_repository.dart';
import 'package:web_form/infrastructure/counter/i_counter_repository.dart';
import 'package:web_form/infrastructure/counter/counter_backend_repository.dart';
import 'package:web_form/infrastructure/counter/counter_service.dart';
import 'package:web_form/domain/counter/i_counter_service.dart';
import 'package:web_form/application/counter/counter_bloc.dart';
import 'package:web_form/application/form/form_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<ICounterService>(
      () => CounterService(g<ICounterRepository>()));
  g.registerFactory<CounterBloc>(() => CounterBloc(g<ICounterService>()));
  g.registerFactory<FormBloc>(() => FormBloc(g<ICounterService>()));

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerFactory<ICounterRepository>(() => CounterMockRepository());
  }

  //Register test Dependencies --------
  if (environment == 'test') {
    g.registerFactory<ICounterRepository>(() => CounterMockTestRepository());
  }

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerFactory<ICounterRepository>(() => CounterBackendRepository());
  }
}
