// Menu.dart

import 'Enum.dart';

class Menu {
  int menuID;
  String productName;
  int qty;
  double price;
  ProductType productType;
  static List<Menu> menuItems = [];

  Menu(this.menuID, this.productName, this.qty, this.price, this.productType);

  // Static method to display the menu
  static void displayMenu() {
    print('\n===== Restaurant Menu =====');
    for (var item in menuItems) {
      print('ID: ${item.menuID}, Product: ${item.productName}, Quantity: ${item.qty}, '
          'Type: ${item.productType}, Price: \$${item.price}');
    }
  }

  static void addMenuItem(Menu item) {
    menuItems.add(item);
    print('\n${item.productName} added to the menu successfully.');
  }

  static void removeMenuItem(int id) {
    menuItems.removeWhere((item) => item.menuID == id);
    print('\nItem with ID $id removed from the menu.');
  }
}
