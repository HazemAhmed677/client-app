import 'package:client_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/get_priority_list.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';
import '../../../../core/widgets/common_container_for_check_board.dart';

class CommonListTile extends StatefulWidget {
  const CommonListTile(
      {super.key,
      required this.leadingIcon,
      required this.title,
      this.trailing,
      this.onTap});
  final IconData leadingIcon;
  final String title;
  final Widget? trailing;
  final Function()? onTap;

  @override
  State<CommonListTile> createState() => _CommonListTileState();
}

class _CommonListTileState extends State<CommonListTile> {
  final List<ProirityContainer> priorities = getPriorityList();

  ProirityContainer priorityChoosed = const ProirityContainer(
    color: AppColors.highPriority,
    priority: 'High',
  );
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8.sp),
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.sp),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.05),
              spreadRadius: 2.sp,
              blurRadius: 2.sp,
              offset: Offset(
                0,
                3.sp,
              ),
            ),
            BoxShadow(
              color: AppColors.secondary.withOpacity(0.05),
              spreadRadius: 3.sp,
              blurRadius: 3.sp,
              offset: Offset(
                0,
                6.sp,
              ), // changes position of shadow
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            top: (widget.trailing != null) ? 18.h : 8.h,
            bottom: (widget.trailing != null) ? 18.h : 8.h,
            right: (widget.trailing != null) ? 14.w : 8.w,
          ),
          child: Row(
            children: [
              Icon(
                widget.leadingIcon,
                color: AppColors.primary,
              ),
              horizontalSpace(12),
              Text(
                widget.title,
                style: AppStyles.gilroyRegular17.copyWith(
                  color: AppColors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeightHelper.bold,
                ),
              ),
              const Spacer(),
              (widget.trailing != null)
                  ? widget.trailing!
                  : PopupMenuButton<String>(
                      position: PopupMenuPosition.under,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.sp),
                      ),
                      color: AppColors.background,
                      // Show the current selected priority as the icon.
                      icon: priorityChoosed,
                      elevation: 6.sp,
                      onSelected: (String selectedPriority) {
                        setState(
                          () {
                            priorityChoosed = priorities.firstWhere(
                              (element) => element.priority == selectedPriority,
                            );
                          },
                        );
                      },
                      // Create the popup menu items with their priorities.
                      itemBuilder: (context) => priorities
                          .map(
                            (priority) => PopupMenuItem<String>(
                              value: priority.priority,
                              child:
                                  priority, // Use the widget to display the priority.
                            ),
                          )
                          .toList(),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
