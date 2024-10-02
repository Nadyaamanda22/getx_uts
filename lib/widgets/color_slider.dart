import 'package:flutter/material.dart';

class ColorSlider extends StatelessWidget {
  final String label;
  final double value;
  final Function(double) onChanged;

  ColorSlider(this.label, this.value, this.onChanged);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label),
        Expanded(
          child: Slider(
            value: value,
            min: 0,
            max: 255,
            onChanged: onChanged,
          ),
        ),
        Text(value.toStringAsFixed(0)),
      ],
    );
  }
}
