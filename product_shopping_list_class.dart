// шаблон товара
class Product {
  String title;
  double price;
  int quantity;

  // конструктор, сразу записываем параметры в поля
  Product(this.title, this.price, this.quantity);

  // считаем общую стоимость конкретной позиции на складе
  double getTotalCost() {
    return price * quantity;
  }

  // выводим инфу по товару
  void printProduct() {
    print('Товар: $title, цена: $price, кол-во: $quantity');
  }

  // пополняем остатки, если привезли больше 0 штук
  void restock(int amount) {
    if (amount > 0) {
      quantity += amount;
    }
  }
}

void main() {
  // список товаров на складе
  List<Product> warehouse = [
    Product('Клавиатура', 2500.0, 10),
    Product('Мышь', 1200.0, 25),
    Product('Монитор', 18500.0, 4),
    Product('Наушники', 4300.0, 12),
    Product('Коврик', 800.0, 30),
  ];

  // общая сумма по всему складу
  double totalWarehouseCost = 0;
  // берём первый товар за точку отсчёта для поиска самого дорогого
  Product mostExpensive = warehouse[0];

  print('--- Список товаров на складе ---');
  // бежим по всем товарам в списке
  for (var product in warehouse) {
    product.printProduct();
    // плюсуем стоимость каждого товара к общему итогу
    totalWarehouseCost += product.getTotalCost();
    // если текущий товар дороже сохранённого — обновляем лидера
    if (product.price > mostExpensive.price) {
      mostExpensive = product;
    }
  }

  print('\nОбщая стоимость всего склада: $totalWarehouseCost');
  print('Самый дорогой товар: ${mostExpensive.title} (${mostExpensive.price})');

  // докидываем 6 мониторов (индекс 2 — это Монитор) и проверяем результат
  print('\nПополнение запасов мониторов...');
  warehouse[2].restock(6);
  warehouse[2].printProduct();
}