import 'dart:math';
import 'package:client_app/core/helpers/logger.dart';
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

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 3; i++) {
      angle[i] = angleStep * i;
      x1[i] = widget.radius + widget.radius * cos(angle[i]); // X position
      y[i] = widget.radius - widget.radius * sin(angle[i]); // Y position
      x11[i] =
          -(widget.radius + widget.radius * cos(angle[i])); // Offset adjustment
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: List.generate(3, (idx) {
        return Positioned(
          left: x1[idx],
          top: y[idx],
          right: x11[idx],
          child: Stack(
            children: [
              Align(
                child: InkWell(
                  onTap: () {
                    loggerDebug('Ezaay');
                    if (idx == 0) {
                      context.push(Routes.createProjectView);
                    } else if (idx == 1) {
                      context.push(Routes.createDocumentView);
                    } else {
                      context.push(Routes.createTaskView);
                    }
                  },
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
            ],
          ),
        );
      }),
    );
  }
}
