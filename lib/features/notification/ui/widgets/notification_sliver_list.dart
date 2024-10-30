import 'package:client_app/features/notification/ui/widgets/notification_element.dart';
import 'package:flutter/material.dart';

class NotificationSliverList extends StatelessWidget {
  const NotificationSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: const NotificationElement(),
      ),
    );
  }
}
