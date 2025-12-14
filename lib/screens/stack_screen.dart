import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/layout_options.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';
import 'package:layout_tutorial/widgets/stack/top_stack.dart';

class StackScreen extends StatefulWidget implements HasLayoutGroup {
  const StackScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  double height = 120;

  double smallTop = 0;
  double smallLeft = 0;

  double smallestContainer = 100;
  double mediumContainer = 200;
  double largeContainer = 300;

  void onChangeSmallTop(double value) {
    setState(() {
      smallTop = value;
    });
  }

  void onChangeSmallLeft(double value) {
    setState(() {
      smallLeft = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.inkBlack,
      appBar: MainAppBar(
        layoutGroup: LayoutGroup.nonScrollable,
        layoutType: LayoutType.stack,
        changeLayoutHandler: widget.onLayoutToggle,
        bottom: PreferredSize(
          preferredSize: Size(0, height),
          child: TopStack(
            sliderLength: largeContainer - smallestContainer,
            onChangeLeft: onChangeSmallLeft,
            onChangeTop: onChangeSmallTop,
            height: height,
            currentSmallLeft: smallLeft,
            currentSmallTop: smallTop,
          ),
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              width: largeContainer,
              height: largeContainer,
              decoration: BoxDecoration(color: AppColors.burntSienna),
              child: Text(
                'Bottom',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            Positioned(
              //bottom: middleContainerBottom,
              // right: middleContainerRight,
              child: Container(
                alignment: Alignment.bottomRight,
                width: mediumContainer,
                height: mediumContainer,
                decoration: BoxDecoration(color: AppColors.slateBlue),
                child: Text(
                  'Middle',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              left: smallLeft,
              top: smallTop,
              child: Container(
                alignment: Alignment.bottomRight,
                height: smallestContainer,
                width: smallestContainer,
                decoration: BoxDecoration(color: AppColors.softLavender),
                child: Text(
                  'Top',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
