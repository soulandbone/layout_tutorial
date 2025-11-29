import 'package:flutter/material.dart';
import 'package:layout_tutorial/lists/layout_options.dart';

class SliversScreen extends StatelessWidget implements HasLayoutGroup {
  const SliversScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('This is the Slivers Screen')));
  }
}
