import 'package:client_app/features/create_board/logic/pick_date/pick_date_cubit.dart';
import 'package:client_app/features/create_board/logic/pick_time/pick_time_cubit.dart';
import 'package:client_app/features/create_board/ui/widgets/task_or_meeting_or_project_sub_details_middle_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskOrMeetingOrProjectSubDetailsMiddle extends StatelessWidget {
  const TaskOrMeetingOrProjectSubDetailsMiddle({super.key});

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
