import 'package:flutter/material.dart';
import 'package:layout_tutorial/lists/layout_options.dart';

class PaddingScreen extends StatelessWidget implements HasLayoutGroup {
  const PaddingScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('This is the Padding Screen')));
  }
}
