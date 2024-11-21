import 'package:client_app/features/create_board/ui/widgets/horizental_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'vertical_dashed_line.dart';

class AddTaskOrSubTaskDividers extends StatelessWidget {
  const AddTaskOrSubTaskDividers({
    super.key,
    required this.isAddSubTask,
  });
  final bool isAddSubTask;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(26.w, 0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalDashedLine(),
          Row(
            children: [
              HorizentalDashedLine(),
            ],
          ),
        ],
      ),
    );
  }
}
