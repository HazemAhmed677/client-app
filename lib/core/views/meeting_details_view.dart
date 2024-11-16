import 'package:flutter/material.dart';

import 'widgets/meeting_details_view_body.dart';

class MeetingDetailsView extends StatelessWidget {
  const MeetingDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MeetingDetailsBody(),
    );
  }
}
