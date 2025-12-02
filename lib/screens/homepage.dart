import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/lists/app_lists.dart';
import 'package:layout_tutorial/constants/lists/layout_options.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  LayoutGroup layoutGroup = LayoutGroup.nonScrollable;
  LayoutType layoutTypeA = LayoutType.rowColumn;
  LayoutType layoutTypeB = LayoutType.pageView;

  LayoutType get layoutTypeSelection => layoutGroup == LayoutGroup.nonScrollable
      ? layoutTypeA
      : layoutTypeB; //derived from whatever the layoutGroup is

  void changeLayoutGroup() {
    setState(() {
      if (layoutGroup == LayoutGroup.nonScrollable) {
        layoutGroup = LayoutGroup.scrollable;
      } else {
        layoutGroup = LayoutGroup.nonScrollable;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.reddishBrown,
        currentIndex: _currentIndex,
        backgroundColor: AppColors.thistle,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: layoutGroup == LayoutGroup.nonScrollable
            ? AppLists.bottomNavItemsNonScrollable
            : AppLists.bottomNavItemsScrollable,
      ),
      body: AppLists.screens[layoutGroup]![_currentIndex](changeLayoutGroup),
    );
  }
}
