import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';
import 'color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  Map<int, String> colorMap = {
    0: 'Black',
    1: 'Orange',
    2: 'Brown',
    3: 'Teal',
  };
  List<Color> colorList = [
    Colors.black,
    Colors.orange,
    Colors.brown,
    Colors.teal,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Select Color : ',
              style: AppStyles.interSemiBold18.copyWith(
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              colorMap[currentIndex]!,
              style: AppStyles.interSemiBold18.copyWith(
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
    );
  }
}
