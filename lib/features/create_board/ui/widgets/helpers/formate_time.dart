import 'package:flutter/material.dart';

String formatTimeOfDay(TimeOfDay timeOfDay) {
  // Get hour and minute in desired format
  final hours = timeOfDay.hourOfPeriod == 0 ? 12 : timeOfDay.hourOfPeriod;
  final minutes = timeOfDay.minute.toString().padLeft(2, '0');
  final period = timeOfDay.period == DayPeriod.am ? 'AM' : 'PM';

  // Format to "hh:mm AM/PM"
  return '$hours:$minutes $period';
}
