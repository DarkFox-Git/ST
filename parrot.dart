import 'dart:io';

void main() {
  print('Попугай');
  while (true) {
    stdout.write('Напиши что угодно и он повторит. \n Остановка ввод слова "Stop" ');
    String? a = stdin.readLineSync()!;
    if (a == 'Stop') {
      break;
    } else {
      print(a);
    }
  }
}