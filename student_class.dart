// шаблон студента
class Student {
  String name;
  int age;
  double averagePoint;
  // конструктор, сразу закидываем значения в поля
  Student(this.name, this.age, this.averagePoint);

  // вывод инфы по студенту
  void printInfo() {
    print('Студент: $name, возраст: $age, средний балл: $averagePoint');
  }
  // проверяем, отличник ли
  bool isExcellent() {
    return averagePoint >= 4.5;
  }
}

void main() {
  // создаём трёх студентов
  Student s1 = Student('Алексей', 16, 4.8);
  Student s2 = Student('Мария', 17, 4.2);
  Student s3 = Student('Дмитрий', 16, 4.5);
  // кидаем всех в один список
  List<Student> students = [s1, s2, s3];
  // проходимся по списку и выводим данные
  for (var student in students) {
    student.printInfo();
    print('Отличник: ${student.isExcellent()}\n');
  }
}