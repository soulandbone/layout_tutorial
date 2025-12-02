import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:layout_tutorial/constants/lists/layout_options.dart';
import 'package:layout_tutorial/constants/lists/strings/app_strings.dart';
import 'package:layout_tutorial/models/contact.dart';
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
  ];

  static Map<MainAxisAlignment, String> mainAxisAlignmentToStringMapper = {
    MainAxisAlignment.spaceAround: AppStrings.kSpaceAround,
    MainAxisAlignment.spaceBetween: AppStrings.kSpaceBetween,
    MainAxisAlignment.spaceEvenly: AppStrings.kSpaceEvenly,
    MainAxisAlignment.start: AppStrings.kStart,
    MainAxisAlignment.center: AppStrings.kCenter,
    MainAxisAlignment.end: AppStrings.kEnd,
  };

  static Map<CrossAxisAlignment, String> crossAxisAlignmentToStringMapper = {
    CrossAxisAlignment.start: AppStrings.kStart,
    CrossAxisAlignment.center: AppStrings.kCenter,
    CrossAxisAlignment.end: AppStrings.kEnd,
  };

  static List<Contact> contacts = [
    Contact(name: 'Joan Doe', email: 'joanDoe@gmail.com'),
    Contact(name: 'Alice Smith', email: 'aliceSmith@gmail.com'),
    Contact(name: 'Bob Johnson', email: 'bobJohnson@gmail.com'),
    Contact(name: 'Carol Williams', email: 'carolWilliams@gmail.com'),
    Contact(name: 'David Brown', email: 'davidBrown@gmail.com'),
    Contact(name: 'Eva Davis', email: 'evaDavis@gmail.com'),
    Contact(name: 'Frank Miller', email: 'frankMiller@gmail.com'),
    Contact(name: 'Grace Wilson', email: 'graceWilson@gmail.com'),
    Contact(name: 'Henry Moore', email: 'henryMoore@gmail.com'),
    Contact(name: 'Isabella Taylor', email: 'isabellaTaylor@gmail.com'),
    Contact(name: 'James Anderson', email: 'jamesAnderson@gmail.com'),
    Contact(name: 'Kate Thomas', email: 'kateThomas@gmail.com'),
    Contact(name: 'Liam Jackson', email: 'liamJackson@gmail.com'),
    Contact(name: 'Mia White', email: 'miaWhite@gmail.com'),
    Contact(name: 'Noah Harris', email: 'noahHarris@gmail.com'),
    Contact(name: 'Olivia Martin', email: 'oliviaMartin@gmail.com'),
    Contact(name: 'Paul Thompson', email: 'paulThompson@gmail.com'),
    Contact(name: 'Quinn Garcia', email: 'quinnGarcia@gmail.com'),
    Contact(name: 'Rachel Martinez', email: 'rachelMartinez@gmail.com'),
    Contact(name: 'Samuel Robinson', email: 'samuelRobinson@gmail.com'),
    Contact(name: 'Tina Clark', email: 'tinaClark@gmail.com'),
    Contact(name: 'Uma Rodriguez', email: 'umaRodriguez@gmail.com'),
    Contact(name: 'Victor Lewis', email: 'victorLewis@gmail.com'),
    Contact(name: 'Wendy Lee', email: 'wendyLee@gmail.com'),
    Contact(name: 'Xavier Walker', email: 'xavierWalker@gmail.com'),
    Contact(name: 'Yara Hall', email: 'yaraHall@gmail.com'),
    Contact(name: 'Zachary Allen', email: 'zacharyAllen@gmail.com'),
    Contact(name: 'Abigail Young', email: 'abigailYoung@gmail.com'),
    Contact(name: 'Benjamin King', email: 'benjaminKing@gmail.com'),
    Contact(name: 'Cynthia Wright', email: 'cynthiaWright@gmail.com'),
    Contact(name: 'Daniel Scott', email: 'danielScott@gmail.com'),
    Contact(name: 'Emily Torres', email: 'emilyTorres@gmail.com'),
    Contact(name: 'Felix Nguyen', email: 'felixNguyen@gmail.com'),
    Contact(name: 'Gina Hill', email: 'ginaHill@gmail.com'),
  ];
}
