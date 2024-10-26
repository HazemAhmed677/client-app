import 'package:flutter/material.dart';

import 'project_details_container.dart';

class ProjectDetailsBody extends StatelessWidget {
  const ProjectDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: ProjectDetailsContainer(),
        ),
      ],
    );
  }
}
