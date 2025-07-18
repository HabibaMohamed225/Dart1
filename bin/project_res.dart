import 'dart:io';
import 'menu_item.dart';
import 'customer.dart';
import 'admin.dart';
import 'restaurant.dart';

void main() {
  print("Welcome to Dart Restaurant System!");
  print("Are you a customer or admin? (c/a): ");
  String? role = stdin.readLineSync();

  if (role == "a") {
    print("Enter admin password: ");
    String? pass = stdin.readLineSync();

    if (Admin.authenticate(pass!)) {
      Admin admin = Admin("Admin", Restaurant.getMenu());
      print("\nLogin successful as Admin!");
      admin.displayRole();

      while (true) {
        print(
          "\n[1] Show Menu\n[2] Add Item\n[3] Update Item\n[4] Remove Item\n[0] Exit",
        );
        print("Choice: ");
        String? choice = stdin.readLineSync();

        switch (choice) {
          case "1":
            admin.showMenu();
            break;
          case "2":
            print("Enter item name: ");
            String? name = stdin.readLineSync();
            print("Enter price: ");
            double price = double.parse(stdin.readLineSync()!);
            admin.addItem(name!, price);
            break;
          case "3":
            print("Old item name: ");
            String? old = stdin.readLineSync();
            print("New name: ");
            String? newName = stdin.readLineSync();
            print("New price: ");
            double newPrice = double.parse(stdin.readLineSync()!);
            admin.updateItem(old!, newName!, newPrice);
            break;
          case "4":
            print("Item name to remove: ");
            String? name = stdin.readLineSync();
            admin.removeItem(name!);
            break;
          case "0":
            print("Logging out...");
            return;
          default:
            print("Invalid choice.");
        }
      }
    } else {
      print("Incorrect password.");
    }
  } else if (role == "c") {
    print("Enter your name: ");
    String? name = stdin.readLineSync();
    Customer customer = Customer(name!);
    print("\nWelcome $name!");
    customer.displayRole();

    while (true) {
      print("\n[1] View Menu\n[2] Add to Order\n[3] Show My Order\n[0] Exit");
      print("Choice: ");
      String? choice = stdin.readLineSync();

      switch (choice) {
        case "1":
          customer.browseMenu(Restaurant.getMenu());
          break;

        case "2":
          while (true) {
            print("Enter item name to add (or 'done' to finish): ");
            String? itemName = stdin.readLineSync();
            if (itemName == 'done') break;
            customer.addToOrderByName(Restaurant.getMenu(), itemName!);
          }

          while (true) {
            print("\nDo you want to:");
            /*print("[1] Modify an item in the order");*/
            print("[1] Remove an item from the order");
            print("[0] Continue");

            print("Your choice: ");
            String? editChoice = stdin.readLineSync();
            if (editChoice == "1") {
              print("Enter item name to remove: ");
              String? nameToRemove = stdin.readLineSync();
              customer.removeFromOrder(nameToRemove!);
            } else if (editChoice == "0") {
              break;
            } else {
              print("Invalid choice.");
            }
          }
          break;
        case "3":
          customer.showMyOrder();
          break;

        case "0":
          print("Thank you for visiting!");
          return;

        default:
          print("Invalid choice.");
      }
    }
  } else {
    print("Invalid role selected.");
  }
}
