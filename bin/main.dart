import 'dart:io';

import 'lib/calculator.dart';

void main() {
  double result;
  print('-' * 14);
  print('Hesap Makinesi');
  print('-' * 14 + '\n');

  print('Lütfen geçerli bir işlem giriniz. Boşluklar önemli değil. \n');
  print('Örneğin --> (2+3*(5*4+3/1)*7+8)+5/7+15*8+(27/8)*5+2\n');

  print('Ben sizin için bu işlemi üşenmeyip yapacağım, umarım...\n');

  while (true) {
    print('-' * 50);

    stdout.write("İşlem (Çıkmak için 'exit' yazın): ");
    // Kullanıcıdan işlem alınıyor
    var input = stdin.readLineSync().trim().replaceAll(' ', '');

    if (input == 'exit') {
      print('Bana müsaade, biraz kafa dinlemeye gideyim\n');
      exit(0);
    }

    try {
      // Girdiyi infix/prefix dönüşümü için hazırladık, ters çevirdik
      var reversedInput = Calculator.reverseEquation(input);

      // Çevrilmiş stringi daha rahat kullanabilmek adına stack içine yerleştirdik
      var equationStack = Calculator.stringToStack(reversedInput);

      // Infixten postfixe geçiş yaptık
      var postfixEquationStack = Calculator.infixToPostfix(equationStack);

      // Sonucu hesaplayıp ekrana yazdık.
      result = Calculator.calculateFromPrefix(postfixEquationStack);

      stdout.write('\nSonuç: $result\n\n');
    } catch (exception) {
      print(exception);
      print(
          '\nBir hatayla karşılaştım, eğer ifadeyi düzgün yazdığından emin isen beni benimle bırak. Sorun sende değil bende.');
    }
  }
}
