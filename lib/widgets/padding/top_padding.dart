import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_styles.dart';
import 'package:layout_tutorial/widgets/flexible_row.dart';

class TopPadding extends StatelessWidget {
  const TopPadding({
    this.colorLeft = Colors.blue,
    this.colorRight = Colors.pink,
    required this.height,
    this.fontSize,
    required this.onPressFunctions,
    required this.textSelections,

    super.key,
  });

  final Color? colorLeft;
  final Color? colorRight;
  final double height;
  final double? fontSize;
  final List<Function(int)> onPressFunctions;
  final List<String> textSelections;

  @override
  Widget build(BuildContext context) {
    final double margin = 50;
    final TextStyle textStyle = AppStyles.topLeftTitlesStyle;

    return SizedBox(
      height: height,
      child: Column(
        children: [
          Expanded(
            child: FlexibleRow(
              textStyle: textStyle,
              margin: margin,
              flexLeft: 2,
              flexRight: 4,
              textLeft: 'Inner Padding',
              onPress: onPressFunctions[0],

              textRight: textSelections[0],
            ),
          ),
          Expanded(
            child: FlexibleRow(
              textStyle: textStyle,
              margin: margin,
              flexLeft: 2,
              flexRight: 4,
              textLeft: 'Outer Padding',
              onPress: onPressFunctions[1],
              textRight: textSelections[1],
            ),
          ),
        ],
      ),
    );
  }
}
