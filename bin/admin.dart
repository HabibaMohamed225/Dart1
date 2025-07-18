import 'user.dart';
import 'menu_item.dart';

class Admin extends User {
  static const String _password = "admin123";
  List<MenuItem> menu;

  Admin(String name, this.menu) : super(name);

  @override
  void displayRole() {
    print("Role: Admin");
  }

  static bool authenticate(String input) => input == _password;

  void showMenu() {
    print("Menu:");
    for (var item in menu) {
      item.display();
    }
  }

  void addItem(String name, double price) {
    menu.add(MenuItem(name, price));
    print("Item added.");
  }

  void updateItem(String oldName, String newName, double newPrice) {
    for (var item in menu) {
      if (item.name == oldName) {
        item.name = newName;
        item.price = newPrice;
        print("Item updated.");
        return;
      }
    }
    print("Item not found.");
  }

  void removeItem(String name) {
    menu.removeWhere((item) => item.name == name);
    print("Item removed.");
  }
}
