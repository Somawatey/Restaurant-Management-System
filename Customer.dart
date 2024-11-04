// Customer.dart

import 'Order.dart';
import 'Table_reservation.dart';

class Customer {
  String customerID;
  String customerName;
  String phoneNumber;
  List<Order> orders = [];
  List<TableReservation> reservations = [];

  Customer(this.customerID, this.customerName, this.phoneNumber);

  // Method to place an order
  void placeOrder(Order order) {
    orders.add(order);
    print('Order ${order.orderId} placed for customer $customerName.');
  }

  // Method to make a reservation
  void makeReservation(TableReservation reservation) {
    reservations.add(reservation);
    print('Reservation for table ${reservation.tableId} on ${reservation.date} made for customer $customerName.');
  }

  // Method to display customer details
  void displayCustomer() {
    print('\n===== Customer Details =====');
    print('Customer ID: $customerID');
    print('Name: $customerName');
    print('Phone: $phoneNumber');
    
    print('\nOrders:');
    if (orders.isNotEmpty) {
      for (var order in orders) {
        order.displayOrder();
      }
    } else {
      print('No orders found.');
    }

    print('\nReservations:');
    if (reservations.isNotEmpty) {
      for (var reservation in reservations) {
        reservation.displayReservation();
      }
    } else {
      print('No reservations found.');
    }
  }
}
