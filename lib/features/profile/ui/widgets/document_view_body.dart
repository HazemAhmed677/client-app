import 'package:client_app/features/profile/logic/choose_bar_cubit/choose_doc_bar_cubit.dart';
import 'package:client_app/features/profile/ui/widgets/document_view_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../check_board/ui/widgets/completed_sliver_list.dart';
import '../../../../core/widgets/custom_board_bar.dart';
import '../../../check_board/ui/widgets/meetings_sliver_list.dart';
import '../../../check_board/ui/widgets/projects_sliver_list.dart';
import '../../../check_board/ui/widgets/tasks_sliver_list.dart';
import '../../../check_board/logic/choose_bar_cubit/choose_bar_cubit.dart';

class DocumentViewBody extends StatelessWidget {
  const DocumentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      clipBehavior: Clip.none,
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: DocumentViewHeader(),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(24),
        ),
        const SliverToBoxAdapter(
          child: CustomBoardBar(
            flag: true,
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(24),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 22.sp),
          sliver: BlocBuilder<ChooseDocumentBarCubit, ChooseDocBarState>(
            builder: (context, state) => (state is ProjectsState)
                ? const ProjectsSliverList()
                : (state is TasksState)
                    ? const TasksSliverList()
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
          child: verticalSpace(100),
        ),
      ],
    );
  }
}
