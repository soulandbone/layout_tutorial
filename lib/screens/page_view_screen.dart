import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/lists/layout_options.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';

class PageViewScreen extends StatelessWidget implements HasLayoutGroup {
  const PageViewScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  Widget _buildPage({required int index, required Color color}) {
    return Container(
      alignment: Alignment.center,
      color: color,
      child: Text(index.toString(), style: TextStyle(fontSize: 108)),
    );
  }

  Widget _buildPageView() {
    return PageView(
      children: [
        _buildPage(index: 1, color: Colors.red),
        _buildPage(index: 2, color: Colors.purple),
        _buildPage(index: 3, color: Colors.green),
        _buildPage(index: 4, color: Colors.pink),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        layoutGroup: LayoutGroup.scrollable,
        layoutType: LayoutType.pageView,
        changeLayoutHandler: onLayoutToggle,
      ),
      body: _buildPageView(),
    );
  }
}
