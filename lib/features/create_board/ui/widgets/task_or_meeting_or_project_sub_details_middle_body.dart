import 'package:client_app/features/create_board/logic/cubit/pick_date_cubit.dart';
import 'package:client_app/features/create_board/logic/pick_time/pick_time_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/logger.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/table_calendar_for_dialog.dart';
import 'colors_list_view.dart';
import 'common_list_tile.dart';
import 'common_text_for_common_list_tile.dart';
import 'helpers/format_date.dart';
import 'helpers/format_time.dart';
import 'time_picker.dart';

class TaskOrMeetingOrProjectSubDetailsMiddleBody extends StatefulWidget {
  const TaskOrMeetingOrProjectSubDetailsMiddleBody({super.key});

  @override
  State<TaskOrMeetingOrProjectSubDetailsMiddleBody> createState() =>
      _TaskOrMeetingOrProjectSubDetailsMiddleBodyState();
}

class _TaskOrMeetingOrProjectSubDetailsMiddleBodyState
    extends State<TaskOrMeetingOrProjectSubDetailsMiddleBody> {
  DateTime? selectedDate = DateTime.now();

  // Format DateTime to "EEEE dd/MM/yyyy" (like "Tuesday 09/07/2024")
  Future<void> _showTableCalendarDialog() async {
    selectedDate = await showDialog<DateTime>(
      context: context,
      builder: (_) => TableCalendarForDialog(
        target: context,
      ),
    );
  }

  Future<void> _showTimePickerDialog() async {
    await showDialog(
      context: context,
      builder: (_) => CustomTimePickerDialog(
        target: context,
      ),
    );
  }

  String formattedTime = formatTimeOfDay(TimeOfDay.now());

  String formattedDate = formatDate(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CommonListTile(
          leadingIcon: FontAwesomeIcons.solidFlag,
          title: 'Priority Level',
        ),
        verticalSpace(
          22,
        ),
        BlocConsumer<PickDateCubit, PickDateState>(
          listener: (context, state) {
            formattedDate = formatDate(
              (state is PickDateSelected) ? state.selectedDate : DateTime.now(),
            );
          },
          builder: (context, state) {
            return CommonListTile(
                onTap: () async {
                  _showTableCalendarDialog();
                  loggerInfo(formattedDate.toString());
                },
                leadingIcon: FontAwesomeIcons.calendarDays,
                title: 'Due Date',
                trailing: CommonTextForCommonListTile(
                  text: formattedDate,
                ));
          },
        ),
        verticalSpace(
          22,
        ),
        BlocConsumer<PickTimeCubit, PickTimeState>(
          listener: (context, state) {
            formattedTime = formatTimeOfDay((state is PickTimeSelected)
                ? state.selectedTime
                : TimeOfDay.now());
          },
          builder: (context, state) {
            return CommonListTile(
                onTap: () {
                  _showTimePickerDialog();
                  loggerInfo(formattedTime.toString());
                },
                leadingIcon: FontAwesomeIcons.solidClock,
                title: 'Time',
                trailing: CommonTextForCommonListTile(
                  text: formattedTime,
                ));
          },
        ),
        verticalSpace(22),
        const ColorListView(),
        verticalSpace(22),
      ],
    );
  }
}
