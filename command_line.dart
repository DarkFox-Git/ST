import 'dart:io';

void main() {
  stdout.write('\nВведите ваше имя: ');
  String? name = stdin.readLineSync();
  stdout.write('Введите название города, в котором живете: ');
  String? city = stdin.readLineSync();
  stdout.write('Введите ваш любимый язык программирвания: ');
  String? programmingLanguage = stdin.readLineSync();

  print('$name из города $city, уважает $programmingLanguage');

  stdout.write('\nВведите нынешний год: ');
  int currentYear = int.parse(stdin.readLineSync()!);
  stdout.write('Введите год рождения: ');
  int birthYear = int.parse(stdin.readLineSync()!);
  int age = currentYear - birthYear;
  print('Год сейчас - $currentYear, год рождения - $birthYear, возраст - $age');

  stdout.write('\nВведите первое число: ');
  double firstNumber = double.parse(stdin.readLineSync()!);
  stdout.write('Введите второе число: ');
  double secondNumber = double.parse(stdin.readLineSync()!);

  print(firstNumber + secondNumber);
  print(firstNumber - secondNumber);
  print(firstNumber * secondNumber);
}