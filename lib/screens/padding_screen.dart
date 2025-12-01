import 'package:flutter/material.dart';
import 'package:layout_tutorial/lists/layout_options.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';

class PaddingScreen extends StatelessWidget implements HasLayoutGroup {
  const PaddingScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        layoutType: LayoutType.padding,
        changeLayoutHandler: onLayoutToggle,
      ),
      body: Center(child: Text('This is the Padding Screen')),
    );
  }
}
