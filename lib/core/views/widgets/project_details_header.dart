import 'package:flutter/material.dart';

import '../../widgets/back_navigation_button.dart';

class ProjectDetailsHeader extends StatelessWidget {
  const ProjectDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackNavigationButton(
          pageContext: context,
        ),
      ],
    );
  }
}
