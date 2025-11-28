import 'package:flutter/foundation.dart';

enum LayoutGroup { nonScrollable, scrollable }

abstract class HasLayoutGroup {
  LayoutGroup get layoutGroup;
  VoidCallback get onLayoutToggle;
}

enum LayoutType {
  rowColumn,
  stack,
  expanded,
  padding,
  pageView,
  list,
  slivers,
  hero,
}

Map<LayoutType, String> layoutNames = {
  LayoutType.rowColumn: 'Row / Col',

  LayoutType.stack: 'Stack',
  LayoutType.expanded: 'Expanded',
  LayoutType.padding: 'Padding',
  LayoutType.pageView: 'Page View',
  LayoutType.list: 'List',
  LayoutType.slivers: 'Slivers',
  LayoutType.hero: 'Hero',
};
