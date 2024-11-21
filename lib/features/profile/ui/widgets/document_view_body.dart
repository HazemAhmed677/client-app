import 'package:client_app/features/profile/logic/choose_bar_cubit/choose_doc_bar_cubit.dart';
import 'package:client_app/core/widgets/common_row_header.dart';
import 'package:client_app/features/profile/ui/widgets/laws_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/custom_board_bar.dart';
import '../../data/models/document_model.dart';

class DocumentViewBody extends StatefulWidget {
  const DocumentViewBody({super.key});

  @override
  State<DocumentViewBody> createState() => _DocumentViewBodyState();
}

class _DocumentViewBodyState extends State<DocumentViewBody> {
  DocumentModel lawsDocument = DocumentModel(
    title: 'Laws Document Card',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Nulla facilisi. Duis aliquet egestas purus in blandit.',
    category: 'Laws',
  );
  DocumentModel taxesDocument = DocumentModel(
    title: 'Taxes Document Card',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Nulla facilisi. Duis aliquet egestas purus in blandit.',
    category: 'Taxes',
  );
  DocumentModel regulationsDocument = DocumentModel(
    title: 'Regulations Document Card',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Nulla facilisi. Duis aliquet egestas purus in blandit.',
    category: 'Regulations',
  );
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
            builder: (context, state) => LawsSliverList(
                documentModel: state is LawsState
                    ? lawsDocument
                    : state is TaxesState
                        ? taxesDocument
                        : state is RegulationsState
                            ? regulationsDocument
                            : null),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(22),
        ),
      ],
    );
  }
}
