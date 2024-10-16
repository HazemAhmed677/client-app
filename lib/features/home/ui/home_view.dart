import 'package:flutter/material.dart';
import 'widgets/home_view_body.dart';
import '../../../core/widgets/nav_bar_stack.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
      bottomNavigationBar: NavBarStack(),
    );
  }
}
