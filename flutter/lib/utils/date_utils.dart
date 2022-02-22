import 'package:intl/intl.dart';

String dateToString(String pattern, DateTime date) {
  final formatter = DateFormat(pattern);
  return formatter.format(date);
}
