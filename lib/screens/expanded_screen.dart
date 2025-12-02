import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/lists/layout_options.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';

class ExpandedScreen extends StatelessWidget implements HasLayoutGroup {
  const ExpandedScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.inkBlack,
      appBar: MainAppBar(
        layoutGroup: LayoutGroup.nonScrollable,
        layoutType: LayoutType.expanded,
        changeLayoutHandler: onLayoutToggle,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.pink),
              child: Center(child: Text('Container 1')),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(child: Text('Container 2')),
            ),
          ),
        ],
      ),
    );
  }
}
