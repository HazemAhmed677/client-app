import 'package:client_app/features/profile/logic/choose_bar_cubit/choose_doc_bar_cubit.dart';
import 'package:client_app/core/widgets/common_row_header.dart';
import 'package:client_app/features/profile/ui/widgets/laws_sliver_list.dart';
import 'package:client_app/features/profile/ui/widgets/regulations_sliver_list.dart';
import 'package:client_app/features/profile/ui/widgets/taxes_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/custom_board_bar.dart';

class DocumentViewBody extends StatelessWidget {
  const DocumentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      clipBehavior: Clip.none,
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: CommonRowHeader(
            title: 'Documents',
          ),
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
            builder: (context, state) => (state is LawsState)
                ? const LawsSliverList()
                : (state is TaxesState)
                    ? const TaxesSliverList()
                    : (state is RegulationsState)
                        ? const RegulationsSliverList()
                        : const SliverToBoxAdapter(
                            child: SizedBox.shrink(),
                          ),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(22),
        ),
      ],
    );
  }
}
