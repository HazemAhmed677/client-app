import 'package:client_app/features/create_board/ui/widgets/create_task_sub_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/dynamic_container.dart';
import '../../../authentication/ui/widgets/custom_action_button.dart';
import 'create_something_detailed_column.dart';
import 'create_something_header.dart';

class CreateTaskBody extends StatefulWidget {
  const CreateTaskBody({super.key});

  @override
  State<CreateTaskBody> createState() => _CreateTaskBodyState();
}

class _CreateTaskBodyState extends State<CreateTaskBody> {
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
                    title: 'Add Task',
                  ),
                ),
              ),
              verticalSpace(
                16,
              ),
              CreateSomethingDetailedColumn(
                formKey: formKey,
                text1: 'Task Title',
                text2: 'Task Details',
                hintText1: 'Task Title',
                hintText2: 'Task Details Here...',
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: CreateTaskSubColumn(),
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
              text: 'Add Task',
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
