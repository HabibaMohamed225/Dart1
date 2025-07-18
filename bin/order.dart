import 'menu_item.dart';

class Order {
  List<MenuItem> items = [];

  void addItem(MenuItem item) {
    items.add(item);
    print("${item.name} added to order.");
  }

  void removeItem(String itemName) {
    items.removeWhere((item) => item.name == itemName);
    print("$itemName removed from order.");
  }

  void updateItem(String oldName, String newName, double newPrice) {
    for (var item in items) {
      if (item.name == oldName) {
        item.name = newName;
        item.price = newPrice;
        print("$oldName updated to $newName - \$$newPrice");
        return;
      }
    }
    print("Item not found.");
  }

  double calculateTotal() {
    double total = 0;
    for (var item in items) {
      total += item.price;
    }
    return total;
  }

  void showOrder() {
    if (items.isEmpty) {
      print("No items in your order.");
    } else {
      print("Your Order:");
      items.forEach((item) => print("- ${item.name} - \$${item.price}"));
      print("Total: \$${calculateTotal()}");
    }
  }
}
