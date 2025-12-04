import 'package:flutter/material.dart';
import 'package:layout_tutorial/widgets/toggle_back_forward.dart';

class FlexibleRow extends StatelessWidget {
  const FlexibleRow({
    required this.flexLeft,
    required this.flexRight,
    required this.textLeft,
    required this.onPress,
    required this.textRight,
    this.fontSize,

    super.key,
  });

  final int flexLeft;
  final int flexRight;
  final String textLeft;
  final double? fontSize;
  final Function(int) onPress;
  final String textRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue),
      child: Row(
        children: [
          Expanded(
            flex: flexLeft,
            child: Text(
              textAlign: TextAlign.start,
              textLeft,
              style: TextStyle(fontSize: fontSize ?? 12),
            ),
          ),
          Expanded(
            flex: flexRight,
            child: Container(
              decoration: BoxDecoration(color: Colors.pink),
              child: ToggleBackForward(
                textRight: textRight,
                onPress: onPress,
                horizontalMargin: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
