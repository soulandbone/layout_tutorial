import 'package:flutter/material.dart';
import 'package:layout_tutorial/widgets/column_row/flexible_row.dart';

class TopComponent extends StatelessWidget {
  const TopComponent({required this.color, super.key});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(color: color),
      child: Column(
        children: [
          Expanded(
            child: FlexibleRow(flexLeft: 2, flexRight: 3, textLeft: 'Layout'),
          ),
          Expanded(
            child: FlexibleRow(flexLeft: 2, flexRight: 3, textLeft: 'Text'),
          ),
          Expanded(
            child: FlexibleRow(flexLeft: 2, flexRight: 3, textLeft: 'lala'),
          ),
          Expanded(
            child: FlexibleRow(flexLeft: 2, flexRight: 3, textLeft: 'loles'),
          ),
        ],
      ),
    );
  }
}
