import 'package:flutter/material.dart';
import 'package:layout_tutorial/lists/layout_options.dart';

class MainAppBar extends AppBar {
  MainAppBar({
    super.key,
    required this.layoutGroup,
    required this.layoutType,
    PreferredSize? bottom,
    required this.onClick,
  }) : super(
         leading: Text(layoutNames[layoutType] ?? ''),
         bottom: bottom,
         title: IconButton(
           onPressed: onClick,
           icon: Icon(Icons.switch_access_shortcut),
         ),
       );

  final LayoutGroup layoutGroup;
  final LayoutType layoutType;
  final VoidCallback onClick;
}
