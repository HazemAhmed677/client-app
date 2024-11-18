import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/dynamic_container.dart';
import 'dynamic_container_profile_content.dart';
import 'profile_grid_view.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: DynamicContainer(
            child: DynamicContainerProfileContent(),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(22),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.0.sp,
            vertical: 12.sp,
          ),
          sliver: const ProfileGridView(),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(88),
        )
      ],
    );
  }
}
