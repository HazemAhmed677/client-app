import 'package:flutter/material.dart';

class MeetingsSliverList extends StatelessWidget {
  const MeetingsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) =>
          const Text('Meeting Item'),
    );
  }
}
