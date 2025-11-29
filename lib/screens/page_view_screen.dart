import 'package:flutter/material.dart';
import 'package:layout_tutorial/lists/layout_options.dart';

class PageViewScreen extends StatelessWidget implements HasLayoutGroup {
  const PageViewScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
