import 'package:dart/dart.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('get_chars', () {
    expect(get_chars("t", 3), "ttt");
  });
}
