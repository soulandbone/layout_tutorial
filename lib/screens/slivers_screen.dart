import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/layout_options.dart';
import 'package:layout_tutorial/widgets/main_app_bar.dart';

class SliversScreen extends StatelessWidget implements HasLayoutGroup {
  const SliversScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  Widget build(BuildContext context) {
    List<Color> rotatingColors = [
      AppColors.creamyBeige,
      AppColors.dustyTaupe,
      AppColors.charcoal,
      AppColors.mutedGold,
      AppColors.slateBlue,
    ];

    List<Color> rotatingColors2 = [
      AppColors.dustyRose,
      AppColors.mauve,
      AppColors.mutedSageGreen,
      AppColors.reddishBrown,
      AppColors.softLavender,
      AppColors.thistle,
    ];

    return Scaffold(
      backgroundColor: AppColors.inkBlack,
      appBar: MainAppBar(
        layoutType: LayoutType.slivers,
        layoutGroup: LayoutGroup.scrollable,
        changeLayoutHandler: onLayoutToggle,
      ),
      body: Center(
        child: CustomScrollView(
          slivers: <Widget>[
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
                  color: rotatingColors[index % rotatingColors.length],
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
                  color: rotatingColors2[index % rotatingColors2.length],
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


// MainAppBar(
//         layoutGroup: LayoutGroup.scrollable,
//         layoutType: LayoutType.slivers,
//         changeLayoutHandler: onLayoutToggle,
//       ),


// SliverAppBar(
//               backgroundColor: AppColors.burntSienna,
//               pinned: true,
//               expandedHeight: 150.0,
//               flexibleSpace: FlexibleSpaceBar(title: Text('Sliver AppBar')),
//             )