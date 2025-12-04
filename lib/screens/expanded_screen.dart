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
  final double height = 80;
  int flexTopContainerIndex = 0;
  int flexBottomContainerIndex = 0;

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
            onPressFunctions: [updateTop, updateBottom],
            labelColumnTop: flexValues[flexTopContainerIndex].toString(),
            labelColumnBottom: flexValues[flexBottomContainerIndex].toString(),
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
              decoration: BoxDecoration(color: Colors.green),
              child: Center(child: Text('Bottom Container')),
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
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.purple),
            child: Text('1', style: TextStyle(fontSize: 26)),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            color: Colors.amberAccent,
            child: Text('2', style: TextStyle(fontSize: 26)),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: Text('3', style: TextStyle(fontSize: 26)),
          ),
        ),
      ],
    );
  }
}
