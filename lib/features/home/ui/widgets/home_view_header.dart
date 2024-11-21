import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_images.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../bottom_nav_bar_switcher/logic/switch_views_cubit/switch_views_cubit.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(8.sp),
          onTap: () {
            BlocProvider.of<SwitchViewsCubit>(context).emitViews(4);
          },
          child: CircleAvatar(
            radius: 24.sp,
            backgroundImage: const AssetImage(AppImages.github),
          ),
        ),
        horizontalSpace(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello!',
              style: AppStyles.nexaSemiBoldNoColor18.copyWith(
                color: AppColors.grey.shade900,
                fontSize: 15.sp,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
            // verticalSpace(2),
            Text(
              'Hazem Ahmed',
              style: AppStyles.nexaBoldNoColor18.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          borderRadius: BorderRadius.circular(8.sp),
          onTap: () {
            BlocProvider.of<SwitchViewsCubit>(context).emitViews(3);
          },
          child: Badge(
            backgroundColor: AppColors.primary,
            label: CircleAvatar(
              radius: 3.sp,
              backgroundColor: AppColors.white,
            ),
            child: Icon(
              IconlyBold.notification,
              size: 28.sp,
              color: AppColors.black,
            ),
          ),
        ),
      ],
    );
  }
}
