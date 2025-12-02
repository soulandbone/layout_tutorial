import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/lists/layout_options.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';

class PaddingScreen extends StatelessWidget implements HasLayoutGroup {
  const PaddingScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.inkBlack,
      appBar: MainAppBar(
        layoutGroup: LayoutGroup.nonScrollable,
        layoutType: LayoutType.padding,
        changeLayoutHandler: onLayoutToggle,
      ),
      body: Center(child: Text('This is the Padding Screen')),
    );
  }
}
