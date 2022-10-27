import 'package:hotelforyou/model/field.dart';
import 'package:hotelforyou/model/user.dart';

class FieldOrder {
  Field field;
  User user;
  String selectedDate;
  List<String> selectedTime;
  bool paidStatus;

  FieldOrder(
      {required this.field,
      required this.user,
      required this.selectedDate,
      required this.selectedTime,
      this.paidStatus = false});
}
