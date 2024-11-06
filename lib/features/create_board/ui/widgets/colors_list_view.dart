import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_styles.dart';
import 'color_item.dart';
import 'helpers/colors_palette.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  Map<int, String> colorMap = {
    0: 'purple',
    1: 'pink',
    2: 'violet',
    3: 'green',
    4: 'orange',
  };
  List<Color> colorList = colorsPalette();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Select Color : ',
                style: AppStyles.interSemiBold18.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                colorMap[currentIndex]!,
                style: AppStyles.interSemiBold18.copyWith(
                  fontSize: 14.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 48,
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: colorList.length,
              itemBuilder: (BuildContext context, int index) => Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: (index != 11) ? 6 : 0,
                      left: (index != 0) ? 6 : 0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        currentIndex = index;
                        setState(() {});
                      },
                      child: ColorItem(
                        isActive: (currentIndex == index),
                        color: colorList[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
