import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_styles.dart';
import 'package:layout_tutorial/widgets/toggle_back_forward.dart';

class FlexibleRow extends StatelessWidget {
  const FlexibleRow({
    required this.flexLeft,
    required this.flexRight,
    required this.textLeft,
    required this.onPress,
    required this.textStyle,
    this.colorLeft,
    this.colorRight,

    required this.textRight,

    this.margin,

    super.key,
  });

  //****************** LEFT PARAMETERS
  final int flexLeft;
  final String textLeft;
  final Color? colorLeft;

  //********************* RIGHT PARAMETERS
  final int flexRight;
  final String textRight;
  final Color? colorRight;

  //*********************************** */

  final double? margin;
  final Function(int) onPress;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: colorLeft),
      child: Row(
        children: [
          Expanded(
            flex: flexLeft,
            child: Padding(
              padding: EdgeInsets.only(left: AppStyles.marginleft),
              child: Text(
                textAlign: TextAlign.start,
                textLeft,
                style: textStyle,
              ),
            ),
          ),
          Expanded(
            flex: flexRight,
            child: Container(
              decoration: BoxDecoration(color: colorRight),
              child: ToggleBackForward(
                textRight: textRight,
                onPress: onPress,
                horizontalMargin: margin ?? 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
