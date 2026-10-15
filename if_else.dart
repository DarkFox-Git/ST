void main() {
  String name = 'Данил';
  String role = 'Студент';

  if (name == 'Данил' && role == 'Студент') {
    print('Должность подтверждена');
  } else {
    print('Неверное имя или должнсть');
  }

  double sum = 3000;
  double threshold = 2000;
  double discountProcent = 25;
  double discountAmount = 0;
  double finalSum = sum;

  if(sum >= threshold) {
    discountAmount = sum * (discountProcent / 100);
    finalSum = sum - discountAmount;
  }

  print('Изначальная сумма $sum');
  print('Ваша скидка составила $discountAmount');
  print('Итоговая сумма к оплате $finalSum');

  String color1 = 'red';
  String color2 = 'yellow';
  
  if(color1 == 'red' && color2 == 'yellow') {
    print('orange');
  } else {
    print('Не та комбинация цвета.');
  }

  String color3 = 'black';
  String color4 = 'green';

  if(color3 == 'blue' || color4 == 'green') {
    print('Green or blue');
  } else {
    print('Неизвестные цвета.');
  }
} 