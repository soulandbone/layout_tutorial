import 'package:flutter/material.dart';
import 'package:layout_tutorial/lists/app_lists.dart';
import 'package:layout_tutorial/lists/layout_options.dart';
import 'package:layout_tutorial/widgets/column_row/top_component.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';

class ColumnRowScreen extends StatefulWidget implements HasLayoutGroup {
  const ColumnRowScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  State<ColumnRowScreen> createState() => _ColumnRowScreenState();
}

class _ColumnRowScreenState extends State<ColumnRowScreen> {
  final double height = 160;

  //START OF STATE VARIABLES
  bool isRow = true;
  MainAxisSize mainAxisSize = MainAxisSize.min;
  int mainAxisIndex = 0;
  int crossAxisIndex = 0;
  // END OF STATE VARIABLES

  final List<Widget> imageChildren = [
    Image.asset('assets/robot_32.png'),
    Image.asset('assets/robot_128.png'),
    Image.asset('assets/robot_32.png'),
  ];

  String get isRowString => isRow ? 'Row' : 'Column';
  String get mainAxisSizeString {
    return mainAxisSize == MainAxisSize.min ? 'min' : 'max';
  }

  void onChangeLayout(int increment) {
    setState(() {
      isRow = !isRow;
    });
  }

  void onChangeMainAxisSize(int increment) {
    setState(() {
      mainAxisSize = mainAxisSize == MainAxisSize.min
          ? MainAxisSize.max
          : MainAxisSize.min;
    });
  }

  void onChangeMainAxisAlignment(int increment) {
    var length = AppLists.mainAxisAlignmentList.length;
    setState(() {
      mainAxisIndex = (mainAxisIndex + increment) % length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        layoutType: LayoutType.rowColumn,
        changeLayoutHandler: widget.onLayoutToggle,
        bottom: PreferredSize(
          preferredSize: Size(0, height),
          child: TopComponent(
            textSelections: [
              isRowString,
              mainAxisSizeString,
              AppLists.mainAxisAlignmentToStringMapper[AppLists
                  .mainAxisAlignmentList[mainAxisIndex]]!,
              'Text3',
            ],
            onPressFunctions: [
              onChangeLayout,
              onChangeMainAxisSize,
              onChangeMainAxisAlignment,
            ],
            fontSize: 15,
            height: height,
            colorLeft: Colors.blue,
            colorRight: Colors.amber,
          ),
        ),
      ),

      body: Container(
        decoration: BoxDecoration(color: Colors.green),
        child: isRow
            ? Row(
                mainAxisSize: mainAxisSize,
                mainAxisAlignment:
                    AppLists.mainAxisAlignmentList[mainAxisIndex],
                crossAxisAlignment:
                    AppLists.crossAxisAlignmentList[crossAxisIndex],
                children: imageChildren,
              )
            : Column(
                mainAxisSize: mainAxisSize,
                mainAxisAlignment:
                    AppLists.mainAxisAlignmentList[mainAxisIndex],
                crossAxisAlignment:
                    AppLists.crossAxisAlignmentList[crossAxisIndex],
                children: imageChildren,
              ),
      ),
    );
  }
}
