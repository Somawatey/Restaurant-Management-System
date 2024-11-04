// Table_reservation.dart

import 'Enum.dart';

class TableReservation {
  int tableId;
  DateTime date;
  ReservationStatus status = ReservationStatus.available;

  TableReservation(this.tableId, this.date);

  void reserveTable() {
    if (status == ReservationStatus.available) {
      status = ReservationStatus.reserved;
      print('Table $tableId reserved on $date.');
    } else {
      print('Table $tableId is not available.');
    }
  }

  void cancelReservation() {
    status = ReservationStatus.available;
    print('Reservation for Table $tableId has been cancelled.');
  }

  void displayReservation() {
    print('Table ID: $tableId, Date: $date, Status: $status');
  }
}
