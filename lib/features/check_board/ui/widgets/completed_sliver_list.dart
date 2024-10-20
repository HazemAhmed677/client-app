import 'package:flutter/material.dart';

class CompletedSliverList extends StatelessWidget {
  const CompletedSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) =>
          const Text('Completed Item'),
    );
  }
}
