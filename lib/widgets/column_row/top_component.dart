import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_strings.dart';
import 'package:layout_tutorial/constants/app_styles.dart';
import 'package:layout_tutorial/widgets/flexible_row.dart';

class TopComponent extends StatelessWidget {
  const TopComponent({
    this.colorLeft = Colors.blue,
    this.colorRight = Colors.pink,
    required this.height,

    required this.onPressFunctions,
    required this.textSelections,

    super.key,
  });

  final Color? colorLeft;
  final Color? colorRight;
  final double height;
  final List<Function(int)> onPressFunctions;
  final List<String> textSelections;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = AppStyles.topLeftTitlesStyle;

    return SizedBox(
      height: height,
      child: Column(
        children: [
          Expanded(
            child: FlexibleRow(
              textStyle: textStyle,
              colorLeft: colorLeft,
              colorRight: colorRight,
              textRight: textSelections[0], // Row / Column String
              onPress: onPressFunctions[0], // onChangeLayout function

              flexLeft: 2,
              flexRight: 3,
              textLeft: AppStrings.kLayout,
            ),
          ),
          Expanded(
            child: FlexibleRow(
              textStyle: textStyle,
              colorLeft: colorLeft,
              colorRight: colorRight,
              textRight:
                  textSelections[1], // MainAxisSize.min or MainAxisSize.max String
              onPress: onPressFunctions[1], // onChangeMainAxisSize
              flexLeft: 2,
              flexRight: 3,
              textLeft: AppStrings.kMainAxisSize,
            ),
          ),
          Expanded(
            child: FlexibleRow(
              textStyle: textStyle,
              colorLeft: colorLeft,
              colorRight: colorRight,
              textRight: textSelections[2],
              onPress: onPressFunctions[2],
              flexLeft: 2,
              flexRight: 3,
              textLeft: AppStrings.kMainAxisAlignment,
            ),
          ),
          Expanded(
            child: FlexibleRow(
              textStyle: textStyle,
              colorLeft: colorLeft,
              colorRight: colorRight,
              textRight: textSelections[3],
              onPress: onPressFunctions[3],
              flexLeft: 2,
              flexRight: 3,
              textLeft: AppStrings.kCrossAxisAlignment,
            ),
          ),
        ],
      ),
    );
  }
}
