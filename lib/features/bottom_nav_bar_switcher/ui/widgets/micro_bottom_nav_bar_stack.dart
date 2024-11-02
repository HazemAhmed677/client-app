import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/build_circle_item.dart';

class MicroBottomNavBarStack extends StatefulWidget {
  const MicroBottomNavBarStack({
    super.key,
    required this.radius,
  });

  final double radius;

  @override
  State<MicroBottomNavBarStack> createState() => _MicroBottomNavBarStackState();
}

class _MicroBottomNavBarStackState extends State<MicroBottomNavBarStack> {
  double angleStep = pi / 2;
  List<double> angle = List.filled(3, 0.0);
  List<double> x1 = List.filled(3, 0.0);
  List<double> y = List.filled(3, 0.0);
  List<double> x11 = List.filled(3, 0.0);
  List<double> lefts = List.filled(3, 0.0);
  List<double> tops = List.filled(3, 0.0);
  @override
  void initState() {
    for (int i = 0; i < 3; i++) {
      angle[i] = angleStep * i;
      x1[i] = widget.radius +
          widget.radius * cos(angle[i]); // radius = sopcd between each 2
      y[i] = widget.radius -
          widget.radius * sin(angle[i]); // Minus to align on top arc
      x11[i] = -(widget.radius +
          widget.radius *
              cos(
                angle[i],
              ));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: List.generate(
        3,
        (idx) {
          return Positioned(
            left: x1[idx],
            top: y[idx],
            right: x11[idx],
            child: GestureDetector(
              onTap: () {
                if (idx == 0) {
                  context.push(Routes.createTaskView);
                } else if (idx == 1) {
                  // check token then navigate to doc if client
                  context.push(Routes.createDocumentView);
                } else {
                  context.push(Routes.createTaskView);
                }
              },
              child: Container(
                decoration: const BoxDecoration(
                    // color: Colors.black,
                    ),
                child: BuildCircleItem(
                  iconData: (idx == 0)
                      ? FontAwesomeIcons.handshakeSimple
                      : (idx == 1)
                          ? FontAwesomeIcons.folderOpen
                          : Icons.task,
                  size: (idx == 2) ? 25 : 22,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
