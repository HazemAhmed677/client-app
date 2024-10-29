import 'package:flutter/material.dart';
import '../../../../core/theming/app_styles.dart';

class WordOfTextfield extends StatelessWidget {
  const WordOfTextfield({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: AppStyles.afacadfluxSemiBold18,
      ),
    );
  }
}
