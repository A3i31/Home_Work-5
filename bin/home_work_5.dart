import 'dart:io';
import 'package:translator/translator.dart';
void main() {
  convert();
}

void convert() {
  print('Добро пожаловать в конвертер валют!');
  print('Введите курс USD');
  double? usd = double.tryParse(stdin.readLineSync() ?? '');
  while (usd == null) {
    print('Введите корректное число');
    usd = double.tryParse(stdin.readLineSync() ?? '');
  }
  print('Введите курс EUR');
  double? eur = double.tryParse(stdin.readLineSync() ?? '');
  while (eur == null) {
    print('Введите корректное число');
    eur = double.tryParse(stdin.readLineSync() ?? '');
  }
  print('Введите курс JPY');
  double? jpy = double.tryParse(stdin.readLineSync() ?? '');
  while (jpy == null) {
    print('Введите корректное число');
    jpy = double.tryParse(stdin.readLineSync() ?? '');
  }
  print('Введите курс CNY');
  double? cny = double.tryParse(stdin.readLineSync() ?? '');
  while (cny == null) {
    print('Введите корректное число');
    cny = double.tryParse(stdin.readLineSync() ?? '');
  }
  print('Введите курс KZT');
  double? kzt = double.tryParse(stdin.readLineSync() ?? '');
  while (kzt == null) {
    print('Введите корректное число');
    kzt = double.tryParse(stdin.readLineSync() ?? '');
  }
  print('Введите курс UZS');
  double? uzs = double.tryParse(stdin.readLineSync() ?? '');
  while (uzs == null) {
    print('Введите корректное число');
    uzs = double.tryParse(stdin.readLineSync() ?? '');
  }
  print(
      '1) Хотите обменять другую валюту на сом?\n2) Хотите обменять сом на другую валюту?');
  String choice = stdin.readLineSync() ?? '';
  while (checkChoice(choice)) {
    print('введите корректное действие');
    choice = stdin.readLineSync() ?? '';
  }
  print('Введите сумму:');
  double? sum = double.tryParse(stdin.readLineSync() ?? '');
  while (sum == null) {
    print('Введите корректное число');
    sum = double.tryParse(stdin.readLineSync() ?? '');
  }
  print('Введите валюту');
  String valuta = stdin.readLineSync() ?? '';
  while (checkValuta(valuta)) {
    print('Введите корректную валюту');
    valuta = stdin.readLineSync() ?? '';
  }

  if (choice == '1') {
    valuta = valuta.toUpperCase();
    if (valuta == 'USD') {
      print(sum * usd);
    } else if (valuta == 'EUR') {
      print(sum * eur);
    } else if (valuta == 'JPY') {
      print(sum * jpy);
    } else if (valuta == 'CNY') {
      print(sum * cny);
    } else if (valuta == 'KZT') {
      print(sum * kzt);
    } else if (valuta == 'UZS') {
      print(sum * uzs);
    } else {
      print('Ошибка');
    }
  } else if (choice == '2') {
    valuta = valuta.toUpperCase();
    if (valuta == 'USD') {
      print(sum / usd);
    } else if (valuta == 'EUR') {
      print(sum / eur);
    } else if (valuta == 'JPY') {
      print(sum / jpy);
    } else if (valuta == 'CNY') {
      print(sum / cny);
    } else if (valuta == 'KZT') {
      print(sum / kzt);
    } else if (valuta == 'UZS') {
      print(sum / uzs);
    } else {
      print('Ошибка');
    }
  } else {
    print('Ошибка');
  }
  print('Хотите продолжить? Y N');
  String call = stdin.readLineSync() ?? '';
  if (call.toLowerCase() == 'y') {
    convert();
  } else {
    print('Спасибо!');
  }
  
}

bool checkChoice(String choice) {
  if (choice == '1' || choice == '2') {
    return false;
  } else {
    return true;
  }
}

bool checkValuta(String valuta) {
  switch (valuta.toUpperCase()) {
    case 'USD':
    case 'EUR':
    case 'JPY':
    case 'CNY':
    case 'KZT':
    case 'UZS':
      return false;
    default:
      return true;
  }
}
