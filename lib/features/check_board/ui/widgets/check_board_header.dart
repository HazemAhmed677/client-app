import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/features/check_board/logic/choose_bar_cubit/choose_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CheckBoardHeader extends StatelessWidget {
  const CheckBoardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 110.sp,
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(
            color: AppColors.white,
          ),
          child: SafeArea(
            bottom: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.0.sp,
                  ),
                  child: Row(
                    children: [
                      BlocBuilder<ChooseBarCubit, ChooseBarState>(
                        builder: (context, state) {
                          return Text(
                            (state is ProjectsState)
                                ? 'Projects'
                                : (state is AssignmentsState)
                                    ? 'Assignments'
                                    : (state is MeetingsState)
                                        ? 'Meetings'
                                        : 'Completed',
                            style: AppStyles.afacadSemiBold22.copyWith(
                              fontSize: 25.sp,
                              color: AppColors.black,
                            ),
                          );
                        },
                      ),
                      const Spacer(),
                      Icon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: AppColors.secondary,
                        size: 22.sp,
                      ),
                      horizontalSpace(24),
                      InkWell(
                        onTap: () {
                          context.push(Routes.calendarView);
                        },
                        overlayColor: WidgetStateProperty.all<Color>(
                          AppColors.primary,
                        ),
                        splashColor: AppColors.primary,
                        highlightColor: AppColors.primary,
                        child: Icon(
                          FontAwesomeIcons.calendarDays,
                          color: AppColors.secondary,
                          size: 22.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
