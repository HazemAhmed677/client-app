import 'package:flutter/material.dart';

String getMonthName(int month) {
  List<String> monthNames = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  return monthNames[month - 1];
}

Widget buildDayContainer(DateTime day, Color color) {
  return Container(
    margin: const EdgeInsets.all(4.0),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: color, // Background color based on the day
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text(
      '${day.day}', // Display the day number
      style: const TextStyle(
          color: Colors.red, fontSize: 16), // Text color and size
    ),
  );
}
