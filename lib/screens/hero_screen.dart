import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/app_lists.dart';
import 'package:layout_tutorial/constants/layout_options.dart';
import 'package:layout_tutorial/widgets/hero/my_header_delegate.dart';

class HeroScreen extends StatelessWidget implements HasLayoutGroup {
  const HeroScreen({super.key, required this.onLayoutToggle});

  @override
  final VoidCallback onLayoutToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.inkBlack,

      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: MyHeaderDelegate(
              layoutGroup: LayoutGroup.scrollable,
              layoutType: LayoutType.hero,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return Image.asset(
                AppLists.desertImagesUrls[index %
                    AppLists.desertImagesUrls.length],
              );
            }),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 40,
              crossAxisSpacing: 20,
            ),
          ),
        ],
      ),
    );
  }
}
