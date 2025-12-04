import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/lists/layout_options.dart';
import 'package:layout_tutorial/widgets/expanded/top_expanded.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';

class ExpandedScreen extends StatefulWidget implements HasLayoutGroup {
  const ExpandedScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  State<ExpandedScreen> createState() => _ExpandedScreenState();
}

class _ExpandedScreenState extends State<ExpandedScreen> {
  final double height = 120;
  int flexTopContainerIndex = 0;
  int flexBottomContainerIndex = 0;
  int flexFirstContainerIndex = 0;
  int flexSecondContainerIndex = 0;
  int flexThirdContainerIndex = 0;

  List<int> flexValues = [1, 2, 3, 4];

  void updateTop(int increment) {
    setState(() {
      flexTopContainerIndex =
          (flexTopContainerIndex + increment) % flexValues.length;
    });
  }

  void updateBottom(int increment) {
    setState(() {
      flexBottomContainerIndex =
          (flexBottomContainerIndex + increment) % flexValues.length;
    });
  }

  void updateFirst(int increment) {
    setState(() {
      flexFirstContainerIndex =
          (flexFirstContainerIndex + increment) % flexValues.length;
    });
  }

  void updateSecond(int increment) {
    setState(() {
      flexSecondContainerIndex =
          (flexSecondContainerIndex + increment) % flexValues.length;
    });
  }

  void updateThird(int increment) {
    setState(() {
      flexThirdContainerIndex =
          (flexThirdContainerIndex + increment) % flexValues.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.inkBlack,
      appBar: MainAppBar(
        layoutGroup: LayoutGroup.nonScrollable,
        layoutType: LayoutType.expanded,
        changeLayoutHandler: widget.onLayoutToggle,
        bottom: PreferredSize(
          preferredSize: Size(0, height),
          child: TopExpanded(
            onPressFunctions: [
              updateTop,
              updateBottom,
              updateFirst,
              updateSecond,
              updateThird,
            ],
            labelColumnTop: flexValues[flexTopContainerIndex].toString(),
            labelColumnBottom: flexValues[flexBottomContainerIndex].toString(),
            labelRowFirst: flexValues[flexFirstContainerIndex].toString(),
            labelRowSecond: flexValues[flexSecondContainerIndex].toString(),
            labelRowThird: flexValues[flexThirdContainerIndex].toString(),
            height: height,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: flexValues[flexTopContainerIndex],
            child: SizedBox(child: _rowScreen()),
          ),
          Expanded(
            flex: flexValues[flexBottomContainerIndex],
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: AppColors.dustyTaupe),
              child: Center(
                child: Text('Bottom Container', style: TextStyle(fontSize: 22)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _rowScreen() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: flexValues[flexFirstContainerIndex],
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: AppColors.mutedGold),
            child: Text(
              flexValues[flexFirstContainerIndex].toString(),
              style: TextStyle(fontSize: 26),
            ),
          ),
        ),
        Expanded(
          flex: flexValues[flexSecondContainerIndex],
          child: Container(
            alignment: Alignment.center,
            color: AppColors.creamyBeige,
            child: Text(
              flexValues[flexSecondContainerIndex].toString(),
              style: TextStyle(fontSize: 26),
            ),
          ),
        ),
        Expanded(
          flex: flexValues[flexThirdContainerIndex],
          child: Container(
            alignment: Alignment.center,
            color: AppColors.slateBlue,
            child: Text(
              flexValues[flexThirdContainerIndex].toString(),
              style: TextStyle(fontSize: 26),
            ),
          ),
        ),
      ],
    );
  }
}
