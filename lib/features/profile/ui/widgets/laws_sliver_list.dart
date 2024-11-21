import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/document_model.dart';
import 'document_card.dart';

class LawsSliverList extends StatelessWidget {
  const LawsSliverList({super.key, required this.documentModel});
  final DocumentModel? documentModel;
  @override
  Widget build(BuildContext context) {
    return documentModel != null
        ? SliverList.builder(
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: EdgeInsets.only(
                bottom: (index != 7) ? 16.0.sp : 0.0,
              ),
              child: Card(
                child: DocumentCard(
                  documentModel: documentModel!,
                ),
              ),
            ),
          )
        : const SliverToBoxAdapter(child: SizedBox.shrink());
  }
}
