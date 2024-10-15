import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/features/authentication/ui/widgets/login_bottom_section.dart';
import 'package:client_app/features/authentication/ui/widgets/login_top_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  // => for loading professionally
  // int _currentIndex = 0;
  // Timer? _timer;
  // bool isAsync = false;
  // @override
  // void initState() {
  //   super.initState();
  //   _timer = Timer.periodic(const Duration(milliseconds: 200), (timer) {
  //     setState(() {
  //       _currentIndex = (_currentIndex + 1) % 3; // Loop through the dots
  //     });
  //   });
  // }

  // @override
  // void dispose() {
  //   _timer?.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 22.0.sp,
            ),
            child: Center(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                clipBehavior: Clip.none,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const LogInTopSection(),
                    verticalSpace(18),
                    const LogInBottomSection(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
