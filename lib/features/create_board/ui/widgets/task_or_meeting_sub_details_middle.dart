import 'package:client_app/core/widgets/table_calendar_for_dialog.dart';
import 'package:client_app/features/create_board/ui/widgets/time_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/spacing.dart';
import 'colors_list_view.dart';
import 'common_list_tile.dart';
import 'common_text_for_common_list_tile.dart';

class TaskOrMeetingOrProjectSubDetailsMiddle extends StatefulWidget {
  const TaskOrMeetingOrProjectSubDetailsMiddle({super.key});

  @override
  State<TaskOrMeetingOrProjectSubDetailsMiddle> createState() =>
      _TaskOrMeetingOrProjectSubDetailsMiddleState();
}

class _TaskOrMeetingOrProjectSubDetailsMiddleState
    extends State<TaskOrMeetingOrProjectSubDetailsMiddle> {
  DateTime? selectedDate = DateTime.now();
  TimeOfDay? selectedTime = TimeOfDay.now();
  Future<void> _showTableCalendarDialog() async {
    selectedDate = await showDialog<DateTime>(
      context: context,
      builder: (BuildContext context) => const TableCalendarForDialog(),
    );
  }

  Future<void> _showTimePickerDialog(BuildContext context) async {
    selectedTime = await showDialog(
      context: context,
      builder: (context) => const CustomTimePickerDialog(),
    );
  }

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
        CommonListTile(
            onTap: () async {
              _showTableCalendarDialog();
            },
            leadingIcon: FontAwesomeIcons.calendarDays,
            title: 'Due Date',
            trailing: const CommonTextForCommonListTile(
              text: 'Tuesday 09/07/2024',
            )),
        verticalSpace(
          22,
        ),
        CommonListTile(
            onTap: () {
              _showTimePickerDialog(context);
            },
            leadingIcon: FontAwesomeIcons.solidClock,
            title: 'Time',
            trailing: const CommonTextForCommonListTile(
              text: '08:20 PM',
            )),
        verticalSpace(22),
        const ColorListView(),
        verticalSpace(22),
      ],
    );
  }
}
