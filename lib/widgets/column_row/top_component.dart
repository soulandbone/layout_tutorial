import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/lists/strings/app_strings.dart';
import 'package:layout_tutorial/widgets/column_row/flexible_row.dart';

class TopComponent extends StatelessWidget {
  const TopComponent({
    required this.colorLeft,
    required this.colorRight,
    required this.height,
    this.fontSize,
    required this.onPressFunctions,
    required this.textSelections,

    super.key,
  });

  final Color colorLeft;
  final Color colorRight;
  final double height;
  final double? fontSize;
  final List<Function(int)> onPressFunctions;
  final List<String> textSelections;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        children: [
          Expanded(
            child: FlexibleRow(
              textRight: textSelections[0], // Row / Column String
              onPress: onPressFunctions[0], // onChangeLayout function
              fontSize: fontSize,

              flexLeft: 2,
              flexRight: 3,
              textLeft: AppStrings.kLayout,
            ),
          ),
          Expanded(
            child: FlexibleRow(
              textRight:
                  textSelections[1], // MainAxisSize.min or MainAxisSize.max String
              onPress: onPressFunctions[1], // onChangeMainAxisSize
              fontSize: fontSize,
              flexLeft: 2,
              flexRight: 3,
              textLeft: AppStrings.kMainAxisSize,
            ),
          ),
          Expanded(
            child: FlexibleRow(
              textRight: textSelections[2],
              onPress: onPressFunctions[2],
              fontSize: fontSize,
              flexLeft: 2,
              flexRight: 3,
              textLeft: AppStrings.kMainAxisAlignment,
            ),
          ),
          Expanded(
            child: FlexibleRow(
              textRight: textSelections[3],
              onPress: onPressFunctions[3],
              fontSize: fontSize,
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
