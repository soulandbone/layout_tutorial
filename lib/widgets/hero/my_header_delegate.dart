import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';

class MyHeaderDelegate extends SliverPersistentHeaderDelegate {
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
          top: 16,
          right: 12,
          child: SafeArea(
            child: Icon(color: AppColors.burntSienna, Icons.change_circle),
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
