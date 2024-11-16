import 'package:client_app/features/create_board/ui/widgets/table_calendar_for_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/spacing.dart';
import 'colors_list_view.dart';
import 'common_list_tile.dart';
import 'common_text_for_common_list_tile.dart';

class TaskOrMeetingSubDetailsMiddle extends StatefulWidget {
  const TaskOrMeetingSubDetailsMiddle({super.key});

  @override
  State<TaskOrMeetingSubDetailsMiddle> createState() =>
      _TaskOrMeetingSubDetailsMiddleState();
}

class _TaskOrMeetingSubDetailsMiddleState
    extends State<TaskOrMeetingSubDetailsMiddle> {
  DateTime? selectedDate = DateTime.now();
  Future<void> _showTableCalendarDialog() async {
    selectedDate = await showDialog<DateTime>(
      context: context,
      builder: (BuildContext context) => const TableCalendarForDialog(),
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
        const CommonListTile(
            leadingIcon: FontAwesomeIcons.solidClock,
            title: 'Time',
            trailing: CommonTextForCommonListTile(
              text: '08:20 PM',
            )),
        verticalSpace(22),
        const ColorListView(),
        verticalSpace(22),
      ],
    );
  }
}
