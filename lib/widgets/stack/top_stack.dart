import 'package:flutter/material.dart';

class TopStack extends StatefulWidget {
  const TopStack({
    required this.currentSmallLeft,
    required this.currentSmallTop,
    required this.height,
    required this.onChangeTop,
    required this.onChangeLeft,
    required this.sliderLength,
    super.key,
  });

  final double height;
  final double currentSmallTop;
  final double currentSmallLeft;
  final ValueChanged<double> onChangeTop;
  final ValueChanged<double> onChangeLeft;
  final double sliderLength;

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
                  max: widget.sliderLength,
                  value: widget.currentSmallTop,
                  onChanged: (value) {
                    widget.onChangeTop(value);
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(flex: 3, child: Text('Left Distance Container')),
              Expanded(
                flex: 7,
                child: Slider(
                  max: widget.sliderLength,
                  value: widget.currentSmallLeft,
                  onChanged: (value) {
                    widget.onChangeLeft(value);
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
