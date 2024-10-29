import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/theming/app_colors.dart';

class CustomSearchTextFeild extends StatelessWidget {
  const CustomSearchTextFeild({
    super.key,
    this.validator,
    this.onSubmitted,
    this.onPressedOnIcon,
    this.onChanged,
    required this.focusNode,
  });
  final String? Function(String?)? validator;
  final Function(String?)? onSubmitted;
  final Function()? onPressedOnIcon;
  final Function(String)? onChanged;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      onFieldSubmitted: onSubmitted,
      cursorColor: AppColors.secondary,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 4.sp,
          vertical: 4.sp,
        ),
        hintFadeDuration: const Duration(
          milliseconds: 200,
        ),
        prefixIcon: IconButton(
          onPressed: onPressedOnIcon,
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 18.sp,
          ),
          color: AppColors.secondary,
        ),
        hintText: 'Search',
        hintStyle: AppStyles.afacadfluxSemiBold18.copyWith(
          fontSize: 17.sp,
          color: Colors.grey.shade500,
        ),
        enabledBorder: buildBorder(
          color: Colors.grey.shade400,
        ),
        focusedBorder: buildBorder(
          color: Colors.grey.shade400,
        ),
        errorBorder: buildBorder(
          color: Colors.redAccent.shade100,
        ),
        focusedErrorBorder: buildBorder(
          color: Colors.redAccent.shade100,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder({
    required Color color,
  }) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
      ),
      borderRadius: BorderRadius.circular(26.0),
    );
  }
}
