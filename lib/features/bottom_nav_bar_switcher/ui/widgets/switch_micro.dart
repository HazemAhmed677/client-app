import 'package:flutter/material.dart';

import 'micro_bottom_nav_bar.dart';

class SwitchMicro extends StatelessWidget {
  const SwitchMicro({
    super.key,
    required this.currentScreenIdx,
    required this.flag,
  });

  final int currentScreenIdx;
  final bool flag;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return ScaleTransition(scale: animation, child: child);
      },
      child: (currentScreenIdx == 2 && flag)
          ? Transform.translate(
              offset: const Offset(
                0,
                80,
              ),
              child: const MicroBottomNavBar(),
            )
          : const SizedBox.shrink(),
    );
  }
}
