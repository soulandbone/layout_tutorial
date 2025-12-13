import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/layout_options.dart';

class MyHeaderDelegate extends SliverPersistentHeaderDelegate {
  MyHeaderDelegate({required this.layoutGroup, required this.layoutType});

  final LayoutGroup layoutGroup;
  final LayoutType layoutType;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset('assets/sky_header.jpg', fit: BoxFit.cover),

        Positioned(
          top: 12,
          left: 0,
          right: 0,
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  layoutNames[layoutType] ?? '',
                  style: TextStyle(fontSize: 22),
                ),
                Text('   '),
                Text(
                  getLayoutGroupName(layoutGroup),
                  style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),

        Positioned(
          top: 4,
          right: 0,
          child: SafeArea(
            child: IconButton(
              onPressed: () {},
              color: AppColors.burntSienna,
              icon: Icon(Icons.change_circle),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 264;

  @override
  double get minExtent => 120;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
