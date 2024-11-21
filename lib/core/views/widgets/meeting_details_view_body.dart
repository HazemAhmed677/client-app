import 'package:client_app/core/views/widgets/meeting_container_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../helpers/spacing.dart';
import 'details_of_container.dart';
import 'total_price_container.dart';

class MeetingDetailsBody extends StatelessWidget {
  const MeetingDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: DetailsOfContainer(
            containerDetails: MeetingContainerContent(),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 14.0.sp,
            ),
            child: Column(
              children: [
                verticalSpace(32),
                const TotalPriceContainer(
                  title: 'Due Date:  ',
                  price: 'Tuesday 09/07/2024',
                  isPrice: false,
                ),
                verticalSpace(24),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
