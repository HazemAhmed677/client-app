import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/widgets/dynamic_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'create_project_detailed_column.dart';
import 'create_project_header.dart';
import 'create_project_sub_column.dart';

class CreateProjectBody extends StatelessWidget {
  const CreateProjectBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(
                height: 100.sp,
                child: const DynamicContainer(
                  isBoardered: true,
                  child: CreateProjectHeader(),
                ),
              ),
              verticalSpace(
                16,
              ),
              const CreateProjectDetailedColumn(),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: CreateProjectSubColumn(),
        ),
      ],
    );
  }
}
