import 'package:flutter/material.dart';

class AssignmentsSliverList extends StatelessWidget {
  const AssignmentsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) =>
          const Text('Assignment Item'),
    );
  }
}
