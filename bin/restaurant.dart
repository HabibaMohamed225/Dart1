import 'menu_item.dart';

class Restaurant {
  static List<MenuItem> menu = [
    MenuItem("Burger", 5.0),
    MenuItem("Pizza", 8.5),
    MenuItem("Pasta", 6.0),
  ];

  static List<MenuItem> getMenu() => menu;
}
