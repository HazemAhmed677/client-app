import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/features/check_board/logic/choose_bar_cubit/choose_bar_cubit.dart';
import 'package:client_app/features/check_board/ui/widgets/assignments_sliver_list.dart';
import 'package:client_app/features/check_board/ui/widgets/completed_sliver_list.dart';
import 'package:client_app/features/check_board/ui/widgets/meetings_sliver_list.dart';
import 'package:client_app/features/check_board/ui/widgets/projects_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: 18.sp,
          ),
          sliver: BlocBuilder<ChooseBarCubit, ChooseBarState>(
            builder: (context, state) => (state is ProjectsState)
                ? const ProjectsSliverList()
                : (state is AssignmentsState)
                    ? const AssignmentsSliverList()
                    : (state is MeetingsState)
                        ? const MeetingsSliverList()
                        : (state is CompletedState)
                            ? const CompletedSliverList()
                            : const SliverToBoxAdapter(
                                child: SizedBox.shrink(),
                              ),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(
            124,
          ),
        )
      ],
    );
  }
}
