import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:web_form/domain/core/backend_failure.dart';
import 'package:web_form/domain/counter/counter_value_objects.dart';
import 'package:web_form/domain/counter/i_counter_service.dart';
import 'package:web_form/infrastructure/counter/i_counter_repository.dart';

@injectable
@RegisterAs(ICounterService)
class CounterService implements ICounterService {
  final ICounterRepository _counterRepository;

  CounterService(this._counterRepository);

  Future<Counter> increment(Counter counter) async {
    return counter.value.fold(
      (l) => Counter(0),
      (r) => Counter(r + 1),
    );
  }

  Future<Counter> decrement(Counter counter) async {
    return counter.value.fold(
      (l) => Counter(0),
      (r) => Counter(r - 1),
    );
  }

  Future<Counter> load() async {
    await Future.delayed(Duration(seconds: 1));
    return _counterRepository.getCounter();
  }

  Stream<Counter> watch() async* {
    await Future.delayed(Duration(seconds: 1));
    yield Counter(new Random().nextInt(100));
    yield* watch();
  }

  @override
  Future<Either<BackendFailure, Unit>> submit({
    @required Name name,
    @required Name doubledName,
  }) async {
    final nameStr = name.value.fold((e) => e.failedValue, id);
    final doubledNameStr = doubledName.value.fold((e) => e.failedValue, id);

    await Future.delayed(const Duration(seconds: 3));

    if (nameStr == '0') {
      return left(const BackendFailure.nameInvalid());
    }

    if (doubledNameStr == '00') {
      return left(const BackendFailure.serverError());
    }

    return right(unit);
  }
}
