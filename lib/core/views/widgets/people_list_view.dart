import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theming/app_images.dart';

class PeopleListView extends StatelessWidget {
  const PeopleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height > 592 ? 64.h : 102.h,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) => Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: (index != 11) ? 6 : 0,
                left: (index != 0) ? 6 : 0,
              ),
              child: const CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage(AppImages.github),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
