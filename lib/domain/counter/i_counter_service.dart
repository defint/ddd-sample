import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:web_form/domain/core/backend_failure.dart';
import 'package:web_form/domain/counter/counter_value_objects.dart';

abstract class ICounterService {
  Future<Counter> increment(Counter counter);
  Future<Counter> decrement(Counter counter);
  Future<Counter> load();
  Stream<Counter> watch();

  Future<Either<BackendFailure, Unit>> submit({
    @required Name name,
    @required Name doubledName,
  });
}
