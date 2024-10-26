import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'check_board_header.dart';
import 'custom_board_bar.dart';
import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/features/check_board/logic/choose_bar_cubit/choose_bar_cubit.dart';
import 'package:client_app/features/check_board/ui/widgets/assignments_sliver_list.dart';
import 'package:client_app/features/check_board/ui/widgets/completed_sliver_list.dart';
import 'package:client_app/features/check_board/ui/widgets/meetings_sliver_list.dart';
import 'package:client_app/features/check_board/ui/widgets/projects_sliver_list.dart';

class CheckBoardBody extends StatefulWidget {
  const CheckBoardBody({super.key});

  @override
  State<CheckBoardBody> createState() => _CheckBoardBodyState();
}

class _CheckBoardBodyState extends State<CheckBoardBody> {
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: KeyboardDismissOnTap(
        child: CustomScrollView(
          clipBehavior: Clip.none,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CheckBoardHeader(
                focusNode: focusNode,
              ),
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
              padding: EdgeInsets.symmetric(horizontal: 22.sp),
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
              child: KeyboardVisibilityBuilder(
                builder: (context, visible) {
                  return !visible
                      ? verticalSpace(100)
                      : const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
