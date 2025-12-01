import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:layout_tutorial/lists/layout_options.dart';
import 'package:layout_tutorial/screens/column_row_screen.dart';
import 'package:layout_tutorial/screens/expanded_screen.dart';
import 'package:layout_tutorial/screens/hero_screen.dart';
import 'package:layout_tutorial/screens/list_view_screen.dart';
import 'package:layout_tutorial/screens/padding_screen.dart';
import 'package:layout_tutorial/screens/page_view_screen.dart';
import 'package:layout_tutorial/screens/slivers_screen.dart';
import 'package:layout_tutorial/screens/stack_screen.dart';

class AppLists {
  static final Map<LayoutGroup, List<Widget Function(VoidCallback)>> screens = {
    LayoutGroup.nonScrollable: [
      (onLayoutToggle) => ColumnRowScreen(onLayoutToggle: onLayoutToggle),
      (onLayoutToggle) => StackScreen(onLayoutToggle: onLayoutToggle),
      (onLayoutToggle) => ExpandedScreen(onLayoutToggle: onLayoutToggle),
      (onLayoutToggle) => PaddingScreen(onLayoutToggle: onLayoutToggle),
    ],
    LayoutGroup.scrollable: [
      (onLayoutToggle) => PageViewScreen(onLayoutToggle: onLayoutToggle),
      (onLayoutToggle) => ListViewScreen(onLayoutToggle: onLayoutToggle),
      (onLayoutToggle) => SliversScreen(onLayoutToggle: onLayoutToggle),
      (onLayoutToggle) => HeroScreen(onLayoutToggle: onLayoutToggle),
    ],
  };

  static List<BottomNavigationBarItem> bottomNavItemsNonScrollable = [
    BottomNavigationBarItem(label: 'Column/Row', icon: Icon(Icons.dehaze)),
    BottomNavigationBarItem(
      label: 'Stack',
      icon: FaIcon(FontAwesomeIcons.layerGroup),
    ),
    BottomNavigationBarItem(
      label: 'Expanded',
      icon: Icon(Icons.settings_overscan),
    ),
    BottomNavigationBarItem(
      label: 'Padding',
      icon: Icon(Icons.expand_outlined),
    ),
  ];

  static List<BottomNavigationBarItem> bottomNavItemsScrollable = [
    BottomNavigationBarItem(label: 'PageView', icon: Icon(Icons.auto_stories)),
    BottomNavigationBarItem(
      label: 'ListView',
      icon: FaIcon(FontAwesomeIcons.list),
    ),
    BottomNavigationBarItem(
      label: 'Slivers',
      icon: Icon(Icons.density_small_outlined),
    ),
    BottomNavigationBarItem(label: 'Hero', icon: Icon(Icons.expand_outlined)),
  ];

  static List<MainAxisAlignment> mainAxisAlignmentList = [
    MainAxisAlignment.start,
    MainAxisAlignment.center,
    MainAxisAlignment.end,
    MainAxisAlignment.spaceAround,
    MainAxisAlignment.spaceBetween,
    MainAxisAlignment.spaceEvenly,
  ];
  static List<CrossAxisAlignment> crossAxisAlignmentList = [
    CrossAxisAlignment.center,
    CrossAxisAlignment.end,
    CrossAxisAlignment.start,
    CrossAxisAlignment.stretch,
  ];

  static Map<MainAxisAlignment, String> mainAxisAlignmentToStringMapper = {
    MainAxisAlignment.spaceAround: 'spaceAround',
    MainAxisAlignment.spaceBetween: 'spaceBetween',
    MainAxisAlignment.spaceEvenly: 'spaceEvenly',
    MainAxisAlignment.start: 'start',
    MainAxisAlignment.center: 'center',
    MainAxisAlignment.end: 'end',
  };
}
