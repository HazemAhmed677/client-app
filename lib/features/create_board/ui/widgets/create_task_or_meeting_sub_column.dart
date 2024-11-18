import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/features/create_board/ui/widgets/attendees_dailog.dart';
import 'package:client_app/features/create_board/ui/widgets/common_text_field_column.dart';
import 'package:client_app/features/create_board/ui/widgets/common_text_for_common_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'attach_file_widget.dart';
import 'common_list_tile.dart';
import 'projects_dialog.dart';
import 'task_or_meeting_or_project_sub_details_middle.dart';

class CreateTaskOrMeetingSubColumn extends StatefulWidget {
  const CreateTaskOrMeetingSubColumn({super.key, this.isTask = true});
  final bool isTask;
  @override
  State<CreateTaskOrMeetingSubColumn> createState() =>
      _CreateTaskOrMeetingSubColumnState();
}

class _CreateTaskOrMeetingSubColumnState
    extends State<CreateTaskOrMeetingSubColumn> {
  bool isToggle = false;
  Future<void> _showProjectsGridView(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => const ProjectsDialog(),
    );
  }

  Future<void> _showEmployeesListView(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => const AttendeesDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 22.0.w,
      ),
      child: Column(
        children: [
          widget.isTask
              ? CommonListTile(
                  onTap: () {
                    _showProjectsGridView(context);
                  },
                  leadingIcon: FontAwesomeIcons.diagramProject,
                  title: 'Project',
                  trailing: const CommonTextForCommonListTile(
                      text: 'Passport service'),
                )
              : CommonListTile(
                  onTap: () {
                    _showEmployeesListView(context);
                  },
                  leadingIcon: FontAwesomeIcons.peopleGroup,
                  title: 'Attendees',
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
          verticalSpace(
            22,
          ),
          const TaskOrMeetingOrProjectSubDetailsMiddle(),
          widget.isTask
              ? CommonListTile(
                  leadingIcon: FontAwesomeIcons.list,
                  title: 'Add Sub Tasks',
                  trailing: IconButton(
                    onPressed: () {
                      isToggle = !isToggle;
                      setState(() {});
                    },
                    icon: (isToggle)
                        ? Icon(
                            FontAwesomeIcons.toggleOn,
                            size: 30.sp,
                            color: AppColors.primary,
                          )
                        : Icon(
                            FontAwesomeIcons.toggleOff,
                            size: 30.sp,
                          ),
                  ),
                )
              : const SizedBox.shrink(),
          widget.isTask ? verticalSpace(22) : const SizedBox.shrink(),
          const AttachFileWidget(),
          verticalSpace(22),
          const CommonTextFieldColumn(
            text: 'Add Note',
            maxLines: 4,
            hintText: 'Add Your Notes',
          ),
          verticalSpace(22),
        ],
      ),
    );
  }
}
