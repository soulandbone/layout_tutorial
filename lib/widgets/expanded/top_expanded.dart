import 'package:flutter/material.dart';
import 'package:layout_tutorial/widgets/flexible_row.dart';
import 'package:layout_tutorial/widgets/toggle_back_forward.dart';

class TopExpanded extends StatelessWidget {
  const TopExpanded({
    required this.labelColumnTop,
    required this.labelColumnBottom,
    required this.height,
    required this.onPressFunctions,
    super.key,
  });

  final String labelColumnTop;
  final String labelColumnBottom;
  final double height;
  final List<Function(int)> onPressFunctions;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.orange),
                    child: Text('Horizontal Flex'),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    child: Row(
                      children: [
                        Expanded(
                          child: ToggleBackForward(
                            horizontalMargin: 0,
                            onPress: onPressFunctions[0], // onUpdateTop
                            textRight: labelColumnTop,
                          ),
                        ),
                        Expanded(
                          child: ToggleBackForward(
                            horizontalMargin: 0,
                            onPress: onPressFunctions[1],
                            textRight: labelColumnBottom,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: FlexibleRow(
              flexLeft: 2,
              flexRight: 3,
              textLeft: 'Flex-BottomColumn',
              onPress: (value) {},
              textRight: 'textRight',
            ),
          ),
        ],
      ),
    );
  }
}
