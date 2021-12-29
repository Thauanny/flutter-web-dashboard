import 'package:intl/intl.dart';

String dateFormatToDayMonthYear(String date) {
  var parseDate = DateFormat('yyyy/MM/dd').parse(date.replaceAll('-', '/'));
  var stringDate = '${parseDate.day}/${parseDate.month}/${parseDate.year}';

  return stringDate;
}
