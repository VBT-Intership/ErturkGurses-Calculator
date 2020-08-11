import 'dart:io';

import '../calculator.dart';

class Substract extends Calculator {
  Substract(double value1, double value2) : super(value1, value2) {
    stdout.write('${value1 - value2}\n');
  }
 
}
