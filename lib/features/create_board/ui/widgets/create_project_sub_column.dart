import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/features/create_board/ui/widgets/common_text_field_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'attach_file_widget.dart';
import 'common_list_tile.dart';
import 'task_or_meeting_sub_details_middle.dart';

class CreateProjectSubColumn extends StatefulWidget {
  const CreateProjectSubColumn({super.key});

  @override
  State<CreateProjectSubColumn> createState() => _CreateProjectSubColumnState();
}

class _CreateProjectSubColumnState extends State<CreateProjectSubColumn> {
  bool isToggle = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 22.0.w,
      ),
      child: Column(
        children: [
          const TaskOrMeetingOrProjectSubDetailsMiddle(),
          CommonListTile(
            leadingIcon: FontAwesomeIcons.list,
            title: 'Add Tasks',
            trailing: IconButton(
              onPressed: () {
                isToggle = !isToggle;
                setState(() {});
              },
              icon: AnimatedSwitcher(
                duration: const Duration(milliseconds: 800),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(
                    scale: animation,
                    child: child,
                  );
                },
                child: (isToggle)
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
            ),
          ),
          verticalSpace(22),
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
