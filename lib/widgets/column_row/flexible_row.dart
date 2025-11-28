import 'package:flutter/material.dart';

class FlexibleRow extends StatelessWidget {
  const FlexibleRow({
    required this.flexLeft,
    required this.flexRight,
    required this.textLeft,
    super.key,
  });

  final int flexLeft;
  final int flexRight;
  final String textLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue),
      child: Row(
        children: [
          Expanded(
            flex: flexLeft,
            child: Container(
              decoration: BoxDecoration(color: Colors.amber),
              child: Text(textLeft),
            ),
          ),
          Expanded(
            flex: flexRight,
            child: Container(decoration: BoxDecoration(color: Colors.pink)),
          ),
        ],
      ),
    );
  }
}
