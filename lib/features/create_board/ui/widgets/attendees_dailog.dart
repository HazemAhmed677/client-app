import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/widgets/dialog_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_images.dart';
import 'attendees_dialog_bottom_section.dart';
import 'attendees_dialog_data_column.dart';
import 'helpers/box_shadow_for_attendees_dialog.dart';

class AttendeesDialog extends StatefulWidget {
  const AttendeesDialog({super.key});

  @override
  State<AttendeesDialog> createState() => _AttendeesDialogState();
}

class _AttendeesDialogState extends State<AttendeesDialog> {
  List<String> employeesList = [];
  List<bool> isCheckedList = [];

  @override
  void initState() {
    super.initState();
    employeesList = List.filled(6, AppImages.github);
    isCheckedList = List.filled(employeesList.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return DialogContainer(
      title: 'Select Attendees',
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12.0.h,
                horizontal: 14.w,
              ),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: employeesList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: (index != employeesList.length - 1) ? 8.h : 0,
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12.sp),
                      onTap: () {
                        setState(() {
                          isCheckedList[index] = !isCheckedList[index];
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.sp),
                          color: AppColors.white,
                          boxShadow: [
                            boxShadowForAttendeesDialog(),
                          ],
                        ),
                        child: Card(
                          color: AppColors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0.h, horizontal: 8.w),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 34,
                                  backgroundImage:
                                      AssetImage(employeesList[index]),
                                ),
                                horizontalSpace(12),
                                const AttendeesDialogDataColumn(),
                                const Spacer(),
                                Checkbox(
                                  activeColor: AppColors.primary,
                                  value: isCheckedList[index],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isCheckedList[index] = value ?? false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const AttendeesDialogBottomSection(),
        ],
      ),
    );
  }
}
