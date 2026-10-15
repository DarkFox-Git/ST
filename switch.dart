
void main() {
  String token = 'Капучино'; 

  switch(token) {
    case 'Капучино':
    print('Капучино выдано');
    
    case 'Экспрессо':
    print('Экспрессо выдано');

    case 'Латте':
    print('Латте выдано');
  }
  
  String weekday = 'Понедельник';

  switch(weekday) {
    case 'Понедельник':
      print('Будний день');
    case 'Вторник':
      print('Будний день');
    case 'Среда':
      print('Будний день');
    case 'Четверг':
      print('Будний день');
    case 'Пятница':
      print('Будний день');
    case 'Суббота':
      print('Выходной день');
    case 'Воскресенье':
      print('Выхдной день');
  }
}