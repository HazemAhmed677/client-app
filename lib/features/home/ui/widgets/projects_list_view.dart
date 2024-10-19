import 'package:client_app/features/home/ui/widgets/project_item.dart';
import 'package:flutter/material.dart';

class ProjectsListView extends StatelessWidget {
  const ProjectsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) => const ProjectItem(),
    );
  }
}
