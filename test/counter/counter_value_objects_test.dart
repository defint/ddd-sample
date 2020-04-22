import 'package:flutter_test/flutter_test.dart';
import 'package:web_form/domain/counter/counter_value_objects.dart';

void main() {
  group('counter_value_objects: counter', () {
    test('should be right with correct value', () {
      var vo = Counter(1);
      expect(vo.value.isRight(), true);
      expect(vo.value.getOrElse(() => 0), 1);
    });

    test('should be left with incorrect value', () {
      var vo = Counter(-1);
      expect(vo.value.isLeft(), true);
      expect(vo.value.getOrElse(() => 0), 0);
    });

    test('should throw assertion with null value', () {
      expect(() => Counter(null), throwsAssertionError);
    });
  });
}
