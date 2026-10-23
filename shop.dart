import 'dart:io';

void main() {
  int balance = 5000; //Задаю значение начальному балансу
  int foodPrices = 0; //Зтартовое значение общей стоимости всего

  List<String> shoppingBasket = []; //Корзина

  while (true) { //Создает цикл
    stdout.write('''
      Выберите пункт:
        1) Выбрать продукты
        2) Корзина
        3) Купить всё
        4) Выход
      '''); //Варианты выбора действий
    
    String? a = stdin.readLineSync();
    if (a == null) continue;

    switch(a) { //Пункт выбора действий
      case '1':
        stdout.write('''
          Что хотите выбрать?
            1) Сыр - 500
            2) Молоко - 70
            3) Хлеб - 20
            4) Чай - 150
            5) Чипсы - 105
        '''); //Доступные продукты и стоимость каждого из них
        String? choice = stdin.readLineSync();
        
        switch (choice) { //Пункт выбора продуктов
          case '1':
            shoppingBasket.add('Сыр');
            print(shoppingBasket);
            foodPrices += 500;
            break;
          case '2':
            shoppingBasket.add('Молоко');
            print(shoppingBasket);
            foodPrices += 70;
            break;
          case '3':
            shoppingBasket.add('Хлеб');
            print(shoppingBasket);
            foodPrices += 20;
            break;
          case '4':
            shoppingBasket.add('Чай');
            print(shoppingBasket);
            foodPrices += 150;
            break;
          case '5':
            shoppingBasket.add('Чипсы');
            print(shoppingBasket);
            foodPrices += 105;
            break;
          default:
            print('Такого товара нет');
        }
        break;

      case '2':
        print('В корзине: $shoppingBasket \nОбщая стоимость: $foodPrices'); //Показыает все содержимое корзины и стоимость всего
        break;

      case '3':
        if (balance >= foodPrices) { //Следит за тем, достаточно ли средств на балансе в переменной balance
          print('Продукты куплены!');
          balance -= foodPrices;
          foodPrices = 0;
          shoppingBasket.clear();
        } else {
          print('Недостаточно средств');
        }
        break;

      case '4':
        print('Выход...');
        return; //Завершает цикл принудительно

      default:
        print('Неверный выбор, попробуйте снова.'); //Ошибка при недоступном выборе
    }
  }
}