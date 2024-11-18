import 'package:intl/intl.dart';

String formatDate(DateTime dateTime) {
  final formattedDate = DateFormat('EEEE dd/MM/yyyy').format(dateTime);
  return formattedDate;
}
