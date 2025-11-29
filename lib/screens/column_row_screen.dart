import 'package:flutter/material.dart';
import 'package:layout_tutorial/lists/layout_options.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';

class ColumnRowScreen extends StatefulWidget implements HasLayoutGroup {
  const ColumnRowScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

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
    return Scaffold(
      appBar: MainAppBar(
        layoutType: LayoutType.rowColumn,
        changeLayoutHandler: widget.onLayoutToggle,
      ),
    );
  }
}
