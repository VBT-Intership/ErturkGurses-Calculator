import 'dart:io';

import '../calculator.dart';

class Multiply extends Calculator {
  Multiply(double value1, double value2) : super(value1, value2) {
    stdout.write('${value1 * value2}\n');
  }
}
