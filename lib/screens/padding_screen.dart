import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/app_strings.dart';
import 'package:layout_tutorial/constants/layout_options.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';
import 'package:layout_tutorial/widgets/padding/top_padding.dart';

class PaddingScreen extends StatefulWidget implements HasLayoutGroup {
  const PaddingScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  State<PaddingScreen> createState() => _PaddingScreenState();
}

class _PaddingScreenState extends State<PaddingScreen> {
  int innerPaddingIndex = 0;
  int outerPaddingIndex = 0;

  final double height = 60;

  final List<int> paddingValues = [0, 10, 20, 30, 40];

  void updateInnerPadding(int increment) {
    setState(() {
      innerPaddingIndex =
          (innerPaddingIndex + increment) % paddingValues.length;
    });
  }

  void updateOuterPadding(int increment) {
    setState(() {
      outerPaddingIndex =
          (outerPaddingIndex + increment) % paddingValues.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.inkBlack,
      appBar: MainAppBar(
        layoutGroup: LayoutGroup.nonScrollable,
        layoutType: LayoutType.padding,
        changeLayoutHandler: widget.onLayoutToggle,
        bottom: PreferredSize(
          preferredSize: Size(0, height),
          child: TopPadding(
            height: height,
            onPressFunctions: [updateInnerPadding, updateOuterPadding],
            textSelections: [
              paddingValues[innerPaddingIndex].toString(),
              paddingValues[outerPaddingIndex].toString(),
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(paddingValues[outerPaddingIndex].toDouble()),
          decoration: BoxDecoration(color: AppColors.mauve),
          child: Container(
            padding: EdgeInsets.all(
              paddingValues[innerPaddingIndex].toDouble(),
            ),
            decoration: BoxDecoration(color: AppColors.slateBlue),
            child: Text(
              AppStrings.kPaddingExample,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
