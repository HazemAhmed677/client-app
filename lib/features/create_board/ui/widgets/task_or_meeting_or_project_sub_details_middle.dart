import 'package:client_app/features/create_board/logic/pick_date/pick_date_cubit.dart';
import 'package:client_app/features/create_board/logic/pick_time/pick_time_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'task_or_meeting_or_project_sub_details_middle_body.dart';

class TaskOrMeetingOrProjectSubDetailsMiddle extends StatefulWidget {
  const TaskOrMeetingOrProjectSubDetailsMiddle({super.key});

  @override
  State<TaskOrMeetingOrProjectSubDetailsMiddle> createState() =>
      _TaskOrMeetingOrProjectSubDetailsMiddleState();
}

class _TaskOrMeetingOrProjectSubDetailsMiddleState
    extends State<TaskOrMeetingOrProjectSubDetailsMiddle> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => PickTimeCubit(),
      ),
      BlocProvider(
        create: (context) => PickDateCubit(),
      ),
    ], child: const TaskOrMeetingOrProjectSubDetailsMiddleBody());
  }
}
