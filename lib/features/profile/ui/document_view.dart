import 'package:client_app/features/profile/logic/choose_bar_cubit/choose_doc_bar_cubit.dart';
import 'package:client_app/features/profile/ui/widgets/document_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DocumentView extends StatelessWidget {
  const DocumentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ChooseDocumentBarCubit(),
        child: const DocumentViewBody(),
      ),
    );
  }
}
