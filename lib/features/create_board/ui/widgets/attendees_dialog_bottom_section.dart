import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/cancel_and_actionbutton_row.dart';

class AttendeesDialogBottomSection extends StatelessWidget {
  const AttendeesDialogBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // verticalSpace(12),
        CancelAndActionButtonRow(
          actionText: 'Select',
          onPressed: () {
            context.pop();
          },
        ),
        verticalSpace(16),
      ],
    );
  }
}
