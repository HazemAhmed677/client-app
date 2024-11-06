import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'common_list_tile.dart';

class CreateProjectSubColumn extends StatelessWidget {
  const CreateProjectSubColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 22.0.w,
        vertical: 14.h,
      ),
      child: Column(
        children: [
          CommonListTile(
            leadingIcon: FontAwesomeIcons.flag,
            title: 'Priority Level',
            trailing: Container(
              width: 10,
            ),
          )
        ],
      ),
    );
  }
}
