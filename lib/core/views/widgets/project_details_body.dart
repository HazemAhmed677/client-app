import 'package:flutter/material.dart';

import 'project_details_header.dart';

class ProjectDetailsBody extends StatelessWidget {
  const ProjectDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          ProjectDetailsHeader(),
        ],
      ),
    );
  }
}
