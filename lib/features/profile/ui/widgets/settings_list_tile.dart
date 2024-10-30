import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile(
      {super.key, required this.title, required this.leading});
  final String title;
  final Widget leading;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppStyles.poppinsMedium14,
      ),
      leading: leading,
    );
  }
}
