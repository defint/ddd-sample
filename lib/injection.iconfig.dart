// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:web_form/application/counter/counter_bloc.dart';
import 'package:web_form/domain/counter/i_counter_service.dart';
import 'package:web_form/infrastructure/counter/counter_service.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<ICounterService>(() => CounterService());
  g.registerFactory<CounterBloc>(() => CounterBloc(g<ICounterService>()));
}
