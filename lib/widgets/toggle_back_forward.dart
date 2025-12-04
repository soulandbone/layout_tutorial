import 'package:flutter/material.dart';

class ToggleBackForward extends StatelessWidget {
  const ToggleBackForward({
    required this.onPress,
    this.fontSize,
    required this.textRight,
    required this.horizontalMargin,
    super.key,
  });

  final double? fontSize;
  final Function(int) onPress;
  final String textRight;
  final double horizontalMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Expanded(
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => onPress(-1), //to decrease in 1 step
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                textRight,
                style: TextStyle(fontSize: fontSize ?? 12),
              ),
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () => onPress(1), //to increase in 1 step
            ),
          ),
        ],
      ),
    );
  }
}
