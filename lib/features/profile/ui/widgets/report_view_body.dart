import 'package:client_app/core/widgets/common_row_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'report_card.dart';

class ReportViewBody extends StatelessWidget {
  const ReportViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: CommonRowHeader(
            title: 'Reports',
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 4.sp),
          sliver: SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: SizedBox(
                height: 80.sp,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20.sp),
                  splashColor: Colors.transparent,
                  overlayColor: WidgetStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                  onTap: () {},
                  child: const ReportCard(),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
