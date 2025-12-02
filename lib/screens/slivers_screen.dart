import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/lists/layout_options.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';

class SliversScreen extends StatelessWidget implements HasLayoutGroup {
  const SliversScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.inkBlack,
      appBar: MainAppBar(
        layoutGroup: LayoutGroup.scrollable,
        layoutType: LayoutType.slivers,
        changeLayoutHandler: onLayoutToggle,
      ),
      body: Center(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: AppColors.dustyTaupe,
              pinned: true,
              expandedHeight: 150.0,
              flexibleSpace: FlexibleSpaceBar(title: Text('Sliver AppBar')),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate((
                BuildContext context,
                int index,
              ) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              }, childCount: 20),
            ),
            SliverFixedExtentList(
              itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate((
                BuildContext context,
                int index,
              ) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
