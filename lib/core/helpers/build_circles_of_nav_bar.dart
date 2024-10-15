import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/build_circle_item.dart';

List<Widget> buildWidgetsInCircle({
  required int count,
  required double radius,
}) {
  List<Widget> widgets = [];
  double angleStep =
      pi / (count - 1); // Calculate step angle for each widget (top arc)

  for (int i = 0; i < count; i++) {
    double angle = angleStep *
        i; // angelStep is in radiuns = pi/2 = 90 degree but focus angel = angelStep * iteration
    // in the first iteration x = radius + radius * cos(0) = // cos(0) = 1
    // ~~ ~~ second ~~ x = radius + radius * cos(90) // cos (90) = 0
    // ~~ ~~ third ~~ x = radius + radius * cos(180) // cos (180) = -1
    double x = radius + radius * cos(angle); // radius = sopcd between each 2
    double y = radius - radius * sin(angle); // Minus to align on top arc
    // sin (0) = 0, y1 =radius - radius * 0 = radius, y1 = 50
    // sin (90) = 1, y2 = radius - radius * 1 = radius - radius = 0
    // sin (180) = 0, y3 = radius - radius * 0 = radius
    widgets.add(
      Positioned(
        left: x, // Offset by half the widget's size (assuming widget is 50x50)
        top: y,

        child: BuildCircleItem(
          iconData: (i == 0)
              ? FontAwesomeIcons.handshakeSimple
              : (i == 1)
                  ? FontAwesomeIcons.folderOpen
                  : Icons.task,
          size: (i == 2) ? 25 : 22,
        ), // index shown
      ),
    );
  }
  return widgets;
}
