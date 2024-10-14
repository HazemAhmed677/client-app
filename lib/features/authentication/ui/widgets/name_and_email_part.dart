import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/features/authentication/ui/widgets/custom_text_form_field.dart';
import 'package:client_app/features/authentication/ui/widgets/email_and_password_part.dart';
import 'package:flutter/material.dart';

import 'word_of_textfield.dart';

class NameAndEmailPart extends StatelessWidget {
  const NameAndEmailPart(
      {super.key,
      required this.onChanged1,
      required this.onChanged2,
      required this.onChanged3,
      required this.textEditingController});
  final void Function(String) onChanged1;
  final void Function(String) onChanged2;
  final void Function(String) onChanged3;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const WordOfTextfield(text: 'Name'),
        verticalSpace(8),
        CustomTextFormField(
          textEditingController: textEditingController,
          hint: 'Hazem Ahmed',
          validator: (value) {
            if (value == null || value == '') {
              return 'Please enter your name';
            } else {
              return null;
            }
          },
          onChanged: onChanged1,
        ),
        verticalSpace(14),
        EmailAndPasswordPart(
          onChanged1: onChanged2,
          onChanged2: onChanged3,
        ),
      ],
    );
  }
}
