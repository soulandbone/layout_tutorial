import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/lists/app_lists.dart';
import 'package:layout_tutorial/constants/lists/layout_options.dart';
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
  final double height = 120;

  //START OF STATE VARIABLES
  bool isRow = true;
  MainAxisSize mainAxisSize = MainAxisSize.min;
  int mainAxisIndex = 0;
  int crossAxisIndex = 0;
  // END OF STATE VARIABLES

  final List<Widget> iconsChildren = [
    FaIcon(FontAwesomeIcons.lifeRing, size: 64),
    FaIcon(FontAwesomeIcons.ring, size: 128),
    FaIcon(FontAwesomeIcons.lifeRing, size: 64),
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

  void onChangeCrossAxisAlignment(int increment) {
    var length = AppLists.crossAxisAlignmentList.length;
    setState(() {
      crossAxisIndex = (crossAxisIndex + increment) % length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.inkBlack,
      appBar: MainAppBar(
        layoutGroup: LayoutGroup.nonScrollable,
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
              AppLists.crossAxisAlignmentToStringMapper[AppLists
                  .crossAxisAlignmentList[crossAxisIndex]]!,
            ],
            onPressFunctions: [
              onChangeLayout,
              onChangeMainAxisSize,
              onChangeMainAxisAlignment,
              onChangeCrossAxisAlignment,
            ],
            fontSize: 15,
            height: height,
            colorLeft: AppColors.burntSienna,
            colorRight: AppColors.dustyRose,
          ),
        ),
      ),

      body: Container(
        decoration: BoxDecoration(color: AppColors.creamyBeige),
        child: isRow
            ? Row(
                mainAxisSize: mainAxisSize,
                mainAxisAlignment:
                    AppLists.mainAxisAlignmentList[mainAxisIndex],
                crossAxisAlignment:
                    AppLists.crossAxisAlignmentList[crossAxisIndex],
                children: iconsChildren,
              )
            : Column(
                mainAxisSize: mainAxisSize,
                mainAxisAlignment:
                    AppLists.mainAxisAlignmentList[mainAxisIndex],
                crossAxisAlignment:
                    AppLists.crossAxisAlignmentList[crossAxisIndex],
                children: iconsChildren,
              ),
      ),
    );
  }
}
