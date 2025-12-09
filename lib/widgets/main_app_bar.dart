import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_colors.dart';
import 'package:layout_tutorial/constants/layout_options.dart';

class MainAppBar extends AppBar {
  MainAppBar({
    super.key,

    required this.layoutType,
    required this.layoutGroup,
    PreferredSize? bottom,
    required this.changeLayoutHandler,
  }) : super(
         title: Center(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(layoutNames[layoutType] ?? ''),
               Text('   '),
               Text(
                 getLayoutGroupName(layoutGroup),
                 style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
               ),
             ],
           ),
         ),
         bottom: bottom,
         backgroundColor: AppColors.copper,
         actions: [
           IconButton(
             color: AppColors.reddishBrown,
             onPressed: changeLayoutHandler,
             icon: Icon(Icons.change_circle),
           ),
         ],
       );

  final LayoutType layoutType;
  final VoidCallback changeLayoutHandler;
  final LayoutGroup layoutGroup;
}
