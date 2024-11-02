import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/features/profile/ui/widgets/grid_view_element.dart';
import 'package:client_app/features/profile/ui/widgets/report_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theming/app_colors.dart';
import 'custom_bottom_modal_sheet.dart';
import 'document_widget.dart';
import 'logout_widget.dart';
import 'settings_widget.dart';

class ProfileGridView extends StatelessWidget {
  const ProfileGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10.sp,
        crossAxisSpacing: 10.sp,
        childAspectRatio: 1.1.sp,
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) => InkWell(
        borderRadius: BorderRadius.circular(16.sp),
        onTap: () {
          if (index == 0) {
            context.push(Routes.createdocumentView);
          } else if (index == 1) {
            context.push(Routes.reportView);
          } else if (index == 2) {
            context.push(Routes.settingsView);
          } else {
            showModalBottomSheet(
              backgroundColor: AppColors.white,
              isDismissible: true,
              isScrollControlled: true,
              sheetAnimationStyle: AnimationStyle(
                curve: Curves.easeIn,
                duration: const Duration(
                  milliseconds: 250,
                ),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20), topEnd: Radius.circular(20)),
              ),
              context: context,
              builder: (context) => const CustomBottomModalSheet(),
            );
          }
        },
        child: GridViewElement(
          icon: (index == 0)
              ? const DocumentWidget()
              : (index == 1)
                  ? const ReportWidget()
                  : (index == 2)
                      ? const SettingsWidget()
                      : const LogoutWidget(),
        ),
      ),
    );
  }
}
