// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:web_form/infrastructure/counter/counter_facade.dart';
import 'package:web_form/domain/counter/i_counter_facade.dart';
import 'package:web_form/application/counter/counter_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<ICounterFacade>(() => CounterFacade());
  g.registerFactory<CounterBloc>(() => CounterBloc(g<ICounterFacade>()));
}
