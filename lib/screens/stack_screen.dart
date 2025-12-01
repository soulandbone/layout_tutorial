import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/lists/layout_options.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';

class StackScreen extends StatefulWidget implements HasLayoutGroup {
  const StackScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        layoutType: LayoutType.stack,
        changeLayoutHandler: widget.onLayoutToggle,
      ),
      body: Center(child: Text('this is the Stack Screen')),
    );
  }
}
