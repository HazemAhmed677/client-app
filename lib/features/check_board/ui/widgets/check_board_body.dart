import 'package:client_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'check_board_header.dart';
import 'custom_board_bar.dart';

class CheckBoardBody extends StatelessWidget {
  const CheckBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      clipBehavior: Clip.none,
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: CheckBoardHeader(),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(24),
        ),
        const SliverToBoxAdapter(
          child: CustomBoardBar(),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(24),
        ),
      ],
    );
  }
}
