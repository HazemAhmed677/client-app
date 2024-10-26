import 'package:client_app/core/views/widgets/project_details_body.dart';
import 'package:flutter/material.dart';

class ProjectDetailView extends StatelessWidget {
  const ProjectDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProjectDetailsBody(),
    );
  }
}
