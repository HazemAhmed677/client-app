import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/widgets/dynamic_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../authentication/ui/widgets/custom_action_button.dart';
import 'create_something_detailed_column.dart';
import 'create_something_header.dart';
import 'create_project_sub_column.dart';

class CreateProjectBody extends StatefulWidget {
  const CreateProjectBody({super.key});

  @override
  State<CreateProjectBody> createState() => _CreateProjectBodyState();
}

class _CreateProjectBodyState extends State<CreateProjectBody> {
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
                    title: 'Add Project',
                  ),
                ),
              ),
              verticalSpace(
                16,
              ),
              CreateSomethingDetailedColumn(
                formKey: formKey,
                text1: 'Project Title',
                text2: 'Project Details',
                hintText1: 'Project Title',
                hintText2: 'Project Details Here...',
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: CreateProjectSubColumn(),
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
              text: 'Add Project',
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
