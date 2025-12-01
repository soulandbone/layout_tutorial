import 'package:flutter/material.dart';
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
              textLeft: 'Layout',
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
              textLeft: 'Main Axis Size',
            ),
          ),
          Expanded(
            child: FlexibleRow(
              textRight: textSelections[2],
              onPress: (value) => onPressFunctions[2](value),
              fontSize: fontSize,
              flexLeft: 2,
              flexRight: 3,
              textLeft: 'Main Axis Alignment',
            ),
          ),
          Expanded(
            child: FlexibleRow(
              textRight: textSelections[3],
              onPress: (value) => onPressFunctions[2](value),
              fontSize: fontSize,
              flexLeft: 2,
              flexRight: 3,
              textLeft: 'Cross Axis Alignment',
            ),
          ),
        ],
      ),
    );
  }
}
