import 'package:client_app/features/check_board/logic/choose_bar_cubit/choose_bar_cubit.dart';
import 'package:client_app/features/check_board/ui/widgets/check_board_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckBoardView extends StatelessWidget {
  const CheckBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChooseBarCubit(),
      child: const CheckBoardBody(),
    );
  }
}
