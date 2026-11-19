class BankAccount {
  // дефолтный владелец, если вдруг понадобится
  String owner = 'Лунтик';
  // стартовый баланс
  double balance = 0.0;
  // при создании счёта подставляем имя владельца
  BankAccount(this.owner);
  // пополняем баланс, если сумма больше нуля
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
    }
  }
  // снимаем деньги, если хватает на балансе
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      // поправил опечатку в тексте
      print('Недостаточно средств');
    }
  }

  // возвращаем текущий баланс
  double getBalance() {
    return balance;
  }
  // выводим инфу по счёту
  void printStatement() {
    print('Владелец: $owner, Баланс: $balance');
  }
} // <-- баг: main() была засунута внутрь класса BankAccount, вынес наружу
void main() {
  // создаём два разных счёта
  BankAccount acc1 = BankAccount('Дядя Шнюк');
  BankAccount acc2 = BankAccount('Кузя');

  // крутим операции с первым счётом
  acc1.deposit(1500);
  acc1.withdraw(400);
  acc1.withdraw(2000); // тут улетит в else, денег не хватит

  // операции со вторым счётом
  acc2.deposit(500);
  acc2.deposit(250);

  // пустая строка для разделения вывода
  print('');
  acc1.printStatement();
  acc2.printStatement();

  // у каждого объекта своя область в памяти, поэтому баланс acc1 и acc2 меняются отдельно
}