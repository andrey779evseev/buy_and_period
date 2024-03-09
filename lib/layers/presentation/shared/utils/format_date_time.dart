import 'package:intl/intl.dart';

String formatDateTime(DateTime dateTime) {
  final daysFromNow = DateTime.now().difference(dateTime).inDays;
  if (daysFromNow < 2) return '${daysFromNow == 0 ? 'сегодня' : 'вчера'} в ${DateFormat.Hm().format(dateTime)}';
  return DateFormat('d LLLL в HH:mm', 'ru').format(dateTime);
}
