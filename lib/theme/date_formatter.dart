import 'package:intl/intl.dart';

String formatttedDate(DateTime date) {
  final formatter = DateFormat('dd, MMM yyyy, hh:mm:ss a');
  return formatter.format(date);
}

String formattedDateSlash(DateTime dateTime) {
  final formatter = DateFormat('dd/MM/yyyy hh:mm:ss a');
  return formatter.format(dateTime);
}