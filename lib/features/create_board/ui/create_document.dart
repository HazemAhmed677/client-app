import 'package:client_app/features/create_board/ui/widgets/create_document_body.dart';
import 'package:flutter/material.dart';

class CreateDocumentView extends StatelessWidget {
  const CreateDocumentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CreateDocumentBody(),
    );
  }
}
