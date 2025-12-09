import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_styles.dart';
import 'package:layout_tutorial/widgets/toggle_back_forward.dart';

class TopExpanded extends StatelessWidget {
  TopExpanded({
    required this.labelColumnTop,
    required this.labelColumnBottom,
    required this.height,
    required this.onPressFunctions,
    required this.labelRowFirst,
    required this.labelRowSecond,
    required this.labelRowThird,
    super.key,
  });

  final String labelColumnTop;
  final String labelColumnBottom;
  final String labelRowFirst;
  final String labelRowSecond;
  final String labelRowThird;
  final double height;
  final List<Function(int)> onPressFunctions;

  final TextStyle titlesTop = TextStyle(
    fontSize: 14,
    fontStyle: FontStyle.italic,
  );

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = AppStyles.topLeftTitlesStyle;

    return SizedBox(
      height: height,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(flex: 3, child: SizedBox()),
                Expanded(
                  flex: 7,
                  child: SizedBox(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text('Top', style: titlesTop),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text('Bottom', style: titlesTop),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    child: Padding(
                      padding: EdgeInsets.only(left: AppStyles.marginleft),
                      child: Text('Horizontal Flex', style: textStyle),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: SizedBox(
                    child: Row(
                      children: [
                        Expanded(
                          child: ToggleBackForward(
                            horizontalMargin: 0,
                            onPress: onPressFunctions[0], // updateTop
                            textRight: labelColumnTop,
                          ),
                        ),
                        Expanded(
                          child: ToggleBackForward(
                            horizontalMargin: 0,
                            onPress: onPressFunctions[1], //updateBottom
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
            child: Row(
              children: [
                Expanded(flex: 3, child: SizedBox()),
                Expanded(
                  flex: 7,
                  child: SizedBox(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text('First', style: titlesTop),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text('Second', style: titlesTop),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text('Third', style: titlesTop),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    child: Padding(
                      padding: EdgeInsets.only(left: AppStyles.marginleft),
                      child: Text('Vertical Flex', style: textStyle),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: SizedBox(
                    child: Row(
                      children: [
                        Expanded(
                          child: ToggleBackForward(
                            horizontalMargin: 0,
                            onPress: onPressFunctions[2], // updateFirst
                            textRight: labelRowFirst,
                          ),
                        ),
                        Expanded(
                          child: ToggleBackForward(
                            horizontalMargin: 0,
                            onPress: onPressFunctions[3], //updateSecond
                            textRight: labelRowSecond,
                          ),
                        ),
                        Expanded(
                          child: ToggleBackForward(
                            horizontalMargin: 0,
                            onPress: onPressFunctions[4], //updateThird
                            textRight: labelRowThird,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
