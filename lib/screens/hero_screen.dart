import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/lists/layout_options.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';

class HeroScreen extends StatelessWidget implements HasLayoutGroup {
  const HeroScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.inkBlack,
      appBar: MainAppBar(
        layoutGroup: LayoutGroup.scrollable,
        layoutType: LayoutType.hero,
        changeLayoutHandler: onLayoutToggle,
      ),
      body: Center(child: Text('This is the Hero Screen')),
    );
  }
}
