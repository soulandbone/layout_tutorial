import 'package:flutter/material.dart';
import 'package:layout_tutorial/widgets/column_row/top_component.dart';

class ColumnRowScreen extends StatefulWidget {
  const ColumnRowScreen({super.key});

  @override
  State<ColumnRowScreen> createState() => _ColumnRowScreenState();
}

class _ColumnRowScreenState extends State<ColumnRowScreen> {
  bool isRow = true;
  final List<Widget> imageChildren = [
    Image.asset('assets/robot_32.png'),
    Image.asset('assets/robot_128.png'),
    Image.asset('assets/robot_32.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopComponent(color: Colors.black),

        isRow
            ? Container(
                decoration: BoxDecoration(color: Colors.amber),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: imageChildren,
                ),
              )
            : Column(children: imageChildren),
      ],
    );
  }
}
