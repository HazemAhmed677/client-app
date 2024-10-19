import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'in_progress_item.dart';

class InProgressListView extends StatelessWidget {
  const InProgressListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.sp,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
            right: (index != 5) ? 16.sp : 0,
          ),
          child: const InProgressItem(),
        ),
      ),
    );
  }
}
