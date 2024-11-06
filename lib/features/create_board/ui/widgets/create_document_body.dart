import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/dynamic_container.dart';
import '../../../authentication/ui/widgets/custom_action_button.dart';
import 'create_document_sub_column.dart';
import 'create_something_detailed_column.dart';
import 'create_something_header.dart';

class CreateDocumentBody extends StatefulWidget {
  const CreateDocumentBody({super.key});

  @override
  State<CreateDocumentBody> createState() => _CreateDocumentBodyState();
}

class _CreateDocumentBodyState extends State<CreateDocumentBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(
                height: 100.sp,
                child: const DynamicContainer(
                  isBoardered: true,
                  child: CreateSomethingHeader(
                    title: 'Add Document',
                  ),
                ),
              ),
              verticalSpace(
                16,
              ),
              CreateSomethingDetailedColumn(
                formKey: formKey,
                text1: 'Document Title',
                text2: 'Document Details',
                hintText1: 'Document Title',
                hintText2: 'Document Details Here...',
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: CreateDocumentSubColumn(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 22.0.w,
            ),
            child: CustomActionButton(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  // autovalidateMode = AutovalidateMode.disabled;
                } else {
                  // autovalidateMode = AutovalidateMode.always;
                }
                setState(() {});
              },
              text: 'Add Document',
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(32),
        )
      ],
    );
  }
}
