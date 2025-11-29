import 'package:flutter/material.dart';
import 'package:layout_tutorial/lists/layout_options.dart';

class MainAppBar extends AppBar {
  MainAppBar({
    super.key,

    required this.layoutType,
    PreferredSize? bottom,
    required this.changeLayoutHandler,
  }) : super(
         leading: Text(layoutNames[layoutType] ?? ''),
         bottom: bottom,
         title: Center(
           child: IconButton(
             onPressed: changeLayoutHandler,
             icon: Icon(Icons.switch_access_shortcut),
           ),
         ),
       );

  final LayoutType layoutType;
  final VoidCallback changeLayoutHandler;
}
