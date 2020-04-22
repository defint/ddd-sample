import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:web_form/domain/counter/counter_value_objects.dart';
import 'package:web_form/domain/counter/i_counter_service.dart';
import 'package:web_form/injection.dart';

void main() {
  configureInjection(injectable.Environment.test);

  group('counter_service: increment', () {
    test('should return 0 with left parameter', () async {
      var instance = getIt<ICounterService>();
      var actual = await instance.increment(Counter(-1));

      expect(actual.value.isRight(), true);
      expect(actual.value.getOrElse(() => 1), 0);
    });

    test('should increment with right parameter', () async {
      var instance = getIt<ICounterService>();
      var actual = await instance.increment(Counter(1));

      expect(actual.value.isRight(), true);
      expect(actual.value.getOrElse(() => 0), 2);
    });
  });

  group('counter_service: decrement', () {
    test('should return 0 with left parameter', () async {
      var instance = getIt<ICounterService>();
      var actual = await instance.decrement(Counter(-1));

      expect(actual.value.isRight(), true);
      expect(actual.value.getOrElse(() => 1), 0);
    });

    test('should decrement with right parameter', () async {
      var instance = getIt<ICounterService>();
      var actual = await instance.decrement(Counter(5));

      expect(actual.value.isRight(), true);
      expect(actual.value.getOrElse(() => 0), 4);
    });
  });

  group('counter_service: load', () {
    test('should load correct value', () async {
      var instance = getIt<ICounterService>();
      var actual = await instance.load();

      expect(actual.value.isRight(), true);
      expect(actual.value.getOrElse(() => 0), 89);
    });
  });

  group('counter_service: watch', () {
    test('should watch values', () async {
      var instance = getIt<ICounterService>();
      var actual = instance.watch();

      expectLater(
          actual, emitsAnyOf(List<Counter>.generate(100, (i) => Counter(i))));

      await Future.delayed(Duration(seconds: 1));
    });
  });
}
