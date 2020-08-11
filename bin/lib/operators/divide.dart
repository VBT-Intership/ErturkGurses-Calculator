import 'dart:io';

import '../calculator.dart';

class Divide extends Calculator {
  Divide(double value1, double value2) : super(value1, value2) {
    stdout.write('${value1 / value2}\n');
  }
}
