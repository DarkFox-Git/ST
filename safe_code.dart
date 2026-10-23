import 'dart:io';

void main() {
  String code;
  do {
    print('Введите пароль: \n'); //Просит ввести пароль
    code = stdin.readLineSync()!;
  } while (code != '1234'); //Если неверно, запросит еще раз

  print('Доступ Разрешен!');  //Дает доступ к сейфу
}