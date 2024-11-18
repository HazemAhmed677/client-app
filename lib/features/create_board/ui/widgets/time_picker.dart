import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helpers/spacing.dart';
import '../../logic/pick_time/pick_time_cubit.dart';

class CustomTimePickerDialog extends StatefulWidget {
  const CustomTimePickerDialog({super.key, required this.target});
  final BuildContext target;
  @override
  // ignore: library_private_types_in_public_api
  _CustomTimePickerDialogState createState() => _CustomTimePickerDialogState();
}

class _CustomTimePickerDialogState extends State<CustomTimePickerDialog> {
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            alwaysUse24HourFormat: false,
          ),
          child: Theme(
            data: ThemeData.dark().copyWith(
              primaryColor: AppColors.primary,
              textTheme: TextTheme(
                bodyMedium: AppStyles.poppinsMedium14.copyWith(
                  color: AppColors.black,
                ), // Minutes text color
              ),
              colorScheme:
                  ColorScheme.fromSwatch().copyWith(secondary: Colors.green),
            ),
            child: child!, // Pass the time picker child
          ),
        );
      },
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  void _onCancel() {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    void onSave() {
      BlocProvider.of<PickTimeCubit>(widget.target)
          .pickTime(time: _selectedTime);
      context.pop();
    }

    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.sp),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(10.sp),
              onTap: () => _selectTime(context),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                child: Text(
                  _selectedTime.format(context),
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
            ),
            verticalSpace(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: _onCancel,
                  child: Text(
                    'Cancel',
                    style: TextStyle(fontSize: 16.sp, color: Colors.red),
                  ),
                ),
                TextButton(
                  onPressed: onSave,
                  child: Text(
                    'Save',
                    style: TextStyle(fontSize: 16.sp, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
