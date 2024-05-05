import 'dart:io';

void main() {
  convert();
}

void convert() {
  print('Добро пожаловать в конвертер валют!');
  print('Введите курс USD');
  double? usd = double.parse(stdin.readLineSync() ?? '');
  while (usd == null) {
    print('Введите корректное число');
    usd = double.parse(stdin.readLineSync() ?? '');
  }
  print('Введите курс EUR');
  double? eur = double.parse(stdin.readLineSync() ?? '');
  while (eur == null) {
    print('Введите корректное число');
    eur = double.parse(stdin.readLineSync() ?? '');
  }
  print('Введите курс JPY');
  double? jpy = double.parse(stdin.readLineSync() ?? '');
  while (jpy == null) {
    print('Введите корректное число');
    jpy = double.parse(stdin.readLineSync() ?? '');
  }
  print('Введите курс CNY');
  double? cny = double.parse(stdin.readLineSync() ?? '');
  while (cny == null) {
    print('Введите корректное число');
    cny = double.parse(stdin.readLineSync() ?? '');
  }
  print('Введите курс KZT');
  double? kzt = double.parse(stdin.readLineSync() ?? '');
  while (kzt == null) {
    print('Введите корректное число');
    kzt = double.parse(stdin.readLineSync() ?? '');
  }
  print('Введите курс UZS');
  double? uzs = double.parse(stdin.readLineSync() ?? '');
  while (uzs == null) {
    print('Введите корректное число');
    uzs = double.parse(stdin.readLineSync() ?? '');
  }
  print(
      '1) Хотите обменять другую валюту на сом?\n2) Хотите обменять сом на другую валюту?');
  String choice = stdin.readLineSync() ?? '';
  while (checkChoise(choice)) {
    print('введите корректное действие');
    choice = stdin.readLineSync() ?? '';
  }
  print('Введите сумму:');
  double? summ = double.parse(stdin.readLineSync() ?? '');
  while (summ == null) {
    print('Введите корректное число');
    summ = double.parse(stdin.readLineSync() ?? '');
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
      print(summ * usd);
    } else if (valuta == 'EUR') {
      print(summ * eur);
    } else if (valuta == 'JPY') {
      print(summ * jpy);
    } else if (valuta == 'CNY') {
      print(summ * cny);
    } else if (valuta == 'KZT') {
      print(summ * kzt);
    } else if (valuta == 'UZS') {
      print(summ * uzs);
    } else {
      print('Ошибка');
    }
  } else if (choice == '2') {
    valuta = valuta.toUpperCase();
    if (valuta == 'USD') {
      print(summ / usd);
    } else if (valuta == 'EUR') {
      print(summ / eur);
    } else if (valuta == 'JPY') {
      print(summ / jpy);
    } else if (valuta == 'CNY') {
      print(summ / cny);
    } else if (valuta == 'KZT') {
      print(summ / kzt);
    } else if (valuta == 'UZS') {
      print(summ / uzs);
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
  }
}

bool checkChoise(String choice) {
  if (choice == '1' || choice == '2') {
    return false;
  } else {
    return true;
  }
}

bool checkValuta(String valuta) {
  if (valuta.toUpperCase() == 'USD' ||
      valuta.toUpperCase() == 'EUR' ||
      valuta.toUpperCase() == 'JPY' ||
      valuta.toUpperCase() == 'CNY' ||
      valuta.toUpperCase() == 'KZT' ||
      valuta.toUpperCase() == 'UZS') {
    return false;
  } else {
    return true;
  }
}
