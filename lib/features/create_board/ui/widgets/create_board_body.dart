import 'package:flutter/material.dart';

class CreateBoardBody extends StatelessWidget {
  const CreateBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      clipBehavior: Clip.none,
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Center(
            child: Text('Create Board'),
          ),
        ),
      ],
    );
  }
}
