import 'package:web_form/domain/counter/counter_value_objects.dart';

abstract class ICounterFacade {
  Future<Counter> increment(Counter counter);
  Future<Counter> decrement(Counter counter);
}
