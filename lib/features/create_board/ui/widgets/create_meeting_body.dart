import 'package:client_app/features/create_board/ui/widgets/create_task_or_meeting_sub_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/dynamic_container.dart';
import '../../../authentication/ui/widgets/custom_action_button.dart';
import 'create_something_detailed_column.dart';
import 'create_something_header.dart';

class CreateMeetingBody extends StatefulWidget {
  const CreateMeetingBody({super.key});

  @override
  State<CreateMeetingBody> createState() => _CreateMeetingBodyState();
}

class _CreateMeetingBodyState extends State<CreateMeetingBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(
                height: 100.sp,
                child: const DynamicContainer(
                  isBoardered: true,
                  child: CreateSomethingHeader(
                    title: 'Add Meeting',
                  ),
                ),
              ),
              verticalSpace(
                16,
              ),
              CreateSomethingDetailedColumn(
                formKey: formKey,
                text1: 'Meeting Title',
                text2: 'Meeting Details',
                hintText1: 'Meeting Title',
                hintText2: 'Meeting Details Here...',
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: CreateTaskOrMeetingSubColumn(
            isTask: false,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 22.0.w,
            ),
            child: CustomActionButton(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  // autovalidateMode = AutovalidateMode.disabled;
                } else {
                  // autovalidateMode = AutovalidateMode.always;
                }
                setState(() {});
              },
              text: 'Add Meeting',
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(32),
        )
      ],
    );
  }
}
