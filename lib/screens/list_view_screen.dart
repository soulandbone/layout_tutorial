import 'package:flutter/material.dart';
import 'package:layout_tutorial/lists/layout_options.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';

class ListViewScreen extends StatelessWidget implements HasLayoutGroup {
  const ListViewScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        layoutType: LayoutType.list,
        changeLayoutHandler: onLayoutToggle,
      ),
      body: Center(child: Text('This is the ListView Screen')),
    );
  }
}
