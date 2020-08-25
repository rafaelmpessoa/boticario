import 'package:intl/intl.dart';

extension LocalDateTime on DateTime {
  String get inLocalString {
    return DateFormat('dd/MM/yyyy HH:mm:ss').format(this);
  }

  String get inOnlyDate {
    return DateFormat('dd/MM/yyyy').format(this);
  }

  String get inOnlyTime {
    return "${this.hour.toString().padLeft(2, '0')}:${this.minute.toString().padLeft(2, '0')}:${this.second.toString().padLeft(2, '0')}";
  }
}
