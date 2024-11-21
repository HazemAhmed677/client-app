import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:client_app/features/check_board/ui/widgets/common_check_board_item.dart';
import 'package:client_app/features/profile/data/models/document_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/common_container_for_check_board.dart';

class DocumentCard extends StatelessWidget {
  const DocumentCard({super.key, required this.documentModel});
  final DocumentModel documentModel;
  @override
  Widget build(BuildContext context) {
    return CommonCheckBoardItem(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18.0,
                ),
                child: Text(
                  documentModel.title,
                  style: AppStyles.nexaSemiBoldNoColor18.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 10.0.sp),
                child: PopupMenuButton<String>(
                  icon: Icon(
                    Icons.more_horiz,
                    size: 22.sp,
                    color: AppColors.bottomNavBarColor,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.sp),
                  ),
                  color: AppColors.background,
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'Delete',
                      child: ListTile(
                        leading: Icon(
                          Icons.delete,
                          color: AppColors.black,
                        ),
                        title: Text('Delete'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
            ),
            child: Text(
              documentModel.description,
              style: AppStyles.nexaSemiBoldNoColor18.copyWith(
                fontSize: 14.sp,
                color: AppColors.grey.shade400,
                fontWeight: FontWeightHelper.extraBold,
              ),
            ),
          ),
          verticalSpace(12),
          verticalSpace(12),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
            ),
            child: Row(
              children: [
                ProirityContainer(
                  color: AppColors.highPriority,
                  priority: documentModel.category,
                ),
                horizontalSpace(8),
                const ProirityContainer(
                  color: AppColors.meetingContainer,
                  priority: 'Document',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
