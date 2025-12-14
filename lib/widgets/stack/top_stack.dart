import 'package:flutter/material.dart';

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
    return SizedBox(
      height: widget.height,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(flex: 3, child: Text('Top distance')),
              Expanded(
                flex: 7,
                child: Slider(
                  max: widget.sliderLengthSmall,
                  value: widget.currentSmallTop,
                  onChanged: (value) {
                    widget.onChangeSmallTop(value);
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(flex: 3, child: Text('Left distance')),
              Expanded(
                flex: 7,
                child: Slider(
                  max: widget.sliderLengthSmall,
                  value: widget.currentSmallLeft,
                  onChanged: (value) {
                    widget.onChangeSmallLeft(value);
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(flex: 3, child: Text('Top distance')),
              Expanded(
                flex: 7,
                child: Slider(
                  max: widget.sliderLengthMedium,
                  value: widget.currentMediumTop,
                  onChanged: (value) {
                    widget.onChangeMediumTop(value);
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(flex: 3, child: Text('Left distance')),
              Expanded(
                flex: 7,
                child: Slider(
                  max: widget.sliderLengthMedium,
                  value: widget.currentMediumLeft,
                  onChanged: (value) {
                    widget.onChangeMediumLeft(value);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
