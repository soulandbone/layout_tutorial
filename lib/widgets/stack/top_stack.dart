import 'package:flutter/material.dart';
import 'package:layout_tutorial/constants/app_strings.dart';

class TopStack extends StatefulWidget {
  const TopStack({
    required this.currentSmallLeft,
    required this.currentSmallTop,
    required this.currentMediumTop,
    required this.currentMediumLeft,
    required this.height,
    required this.onChangeSmallTop,
    required this.onChangeSmallLeft,
    required this.onChangeMediumTop,
    required this.onChangeMediumLeft,
    required this.sliderLengthSmall,
    required this.sliderLengthMedium,
    super.key,
  });

  final double height;
  final double currentSmallTop;
  final double currentSmallLeft;
  final double currentMediumTop;
  final double currentMediumLeft;
  final ValueChanged<double> onChangeSmallTop;
  final ValueChanged<double> onChangeSmallLeft;
  final ValueChanged<double> onChangeMediumLeft;
  final ValueChanged<double> onChangeMediumTop;
  final double sliderLengthSmall;
  final double sliderLengthMedium;

  @override
  State<TopStack> createState() => _TopStackState();
}

class _TopStackState extends State<TopStack> {
  @override
  Widget build(BuildContext context) {
    double sliderHeight = 30;

    return SizedBox(
      height: widget.height,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppStrings.kTopContainer,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(AppStrings.kTopDistance),
                ),
              ),
              Expanded(
                flex: 7,
                child: SizedBox(
                  height: sliderHeight,
                  child: Slider(
                    max: widget.sliderLengthSmall,
                    value: widget.currentSmallTop,
                    onChanged: (value) {
                      widget.onChangeSmallTop(value);
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(AppStrings.kLeftDistance),
                ),
              ),
              Expanded(
                flex: 7,
                child: SizedBox(
                  height: sliderHeight,
                  child: Slider(
                    max: widget.sliderLengthSmall,
                    value: widget.currentSmallLeft,
                    onChanged: (value) {
                      widget.onChangeSmallLeft(value);
                    },
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppStrings.kMiddleContainer,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(AppStrings.kTopDistance),
                ),
              ),
              Expanded(
                flex: 7,
                child: SizedBox(
                  height: sliderHeight,
                  child: Slider(
                    max: widget.sliderLengthMedium,
                    value: widget.currentMediumTop,
                    onChanged: (value) {
                      widget.onChangeMediumTop(value);
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(AppStrings.kLeftDistance),
                ),
              ),
              Expanded(
                flex: 7,
                child: SizedBox(
                  height: sliderHeight,
                  child: Slider(
                    max: widget.sliderLengthMedium,
                    value: widget.currentMediumLeft,
                    onChanged: (value) {
                      widget.onChangeMediumLeft(value);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
