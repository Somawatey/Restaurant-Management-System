// Order.dart

import 'Menu.dart';
import 'Enum.dart';

class Order {
  int orderId;
  List<Menu> orderItems = [];
  double totalPrice = 0.0;
  OrderStatus orderStatus = OrderStatus.pending;
  PaymentStatus paymentStatus = PaymentStatus.pending;

  Order(this.orderId);

  // Calculate and update the total price
  double calculateTotalPrice() {
    totalPrice = orderItems.fold(0.0, (sum, item) => sum + (item.price * item.qty));
    return totalPrice;
  }

  void addOrderItem(Menu item) {
    orderItems.add(item);
    print('${item.productName} added to your order.');
  }

  void processPayment() {
    paymentStatus = PaymentStatus.paid;
    print('Payment processed. Payment Status: $paymentStatus');
  }

  void displayOrder() {
    print('\n===== Order Details =====');
    print('Order ID: $orderId');
    for (var item in orderItems) {
      print('Item: ${item.productName}, Qty: ${item.qty}, Price: \$${item.price}');
    }
    calculateTotalPrice();
    print('Total Price: \$${totalPrice.toStringAsFixed(2)}');
    print('Order Status: $orderStatus, Payment Status: $paymentStatus');
  }
}
