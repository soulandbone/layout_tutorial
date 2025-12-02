import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/lists/layout_options.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';

class StackScreen extends StatefulWidget implements HasLayoutGroup {
  const StackScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  double middleContainerBottom = 0;
  double middleContainerRight = 80;
  double middleContainerTop = 0;
  double middleContainerLeft = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.inkBlack,
      appBar: MainAppBar(
        layoutGroup: LayoutGroup.nonScrollable,
        layoutType: LayoutType.stack,
        changeLayoutHandler: widget.onLayoutToggle,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              width: 300,
              height: 300,
              decoration: BoxDecoration(color: Colors.purpleAccent),
              child: Text(
                'Bottom',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            Positioned(
              //bottom: middleContainerBottom,
              right: middleContainerRight,
              child: Container(
                alignment: Alignment.bottomRight,
                width: 200,
                height: 200,
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Middle',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: Colors.amber),
              child: Text(
                'Top',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
