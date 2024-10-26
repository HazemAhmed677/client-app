import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/features/check_board/ui/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/calendar_icon.dart';

class CheckBoardHeader extends StatefulWidget {
  const CheckBoardHeader({
    super.key,
    required this.focusNode,
  });
  final FocusNode focusNode;
  @override
  State<CheckBoardHeader> createState() => _CheckBoardHeaderState();
}

class _CheckBoardHeaderState extends State<CheckBoardHeader> {
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
                      // BlocBuilder<ChooseBarCubit, ChooseBarState>(
                      //   builder: (context, state) {
                      //     return Text(
                      //       (state is ProjectsState)
                      //           ? 'Projects'
                      //           : (state is AssignmentsState)
                      //               ? 'Assignments'
                      //               : (state is MeetingsState)
                      //                   ? 'Meetings'
                      //                   : 'Completed',
                      //       style: AppStyles.afacadSemiBold22.copyWith(
                      //         fontSize: 25.sp,
                      //         color: AppColors.black,
                      //       ),
                      //     );
                      //   },
                      // ),
                      // horizontalSpace(14),
                      Expanded(
                        child: SizedBox(
                          height: 42.sp,
                          child: CustomSearchTextFeild(
                            onPressedOnIcon: () {},
                            focusNode: widget.focusNode,
                          ),
                        ),
                      ),
                      horizontalSpace(12),
                      const CalendarIcon(),
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
