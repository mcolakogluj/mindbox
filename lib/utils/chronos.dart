import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class Chronos {
  static String getDateShort(String date) {
    var dateTime = DateTime.parse(date);
    initializeDateFormatting();
    
    var formatter = DateFormat('dd/MM/yyyy hh:mm', 'tr');
    return formatter.format(dateTime);
  }
}