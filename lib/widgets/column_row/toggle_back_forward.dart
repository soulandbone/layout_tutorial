import 'package:flutter/material.dart';

class ToggleBackForward extends StatelessWidget {
  const ToggleBackForward({
    required this.onPress,
    this.fontSize,
    required this.textRight,
    super.key,
  });

  final double? fontSize;
  final Function(int) onPress;
  final String textRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              onPress(-1); //to decrease in 1 step
            },
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
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              onPress(1); //to increase in 1 step
            },
          ),
        ],
      ),
    );
  }
}
