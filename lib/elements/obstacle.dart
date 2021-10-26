import 'package:flutter/material.dart';

class Obstacle extends StatelessWidget {
  final double obsWidth;
  final double obsHeight;
  final double obsX;
  final double obsY;

  // ignore: use_key_in_widget_constructors
  const Obstacle({
    required this.obsHeight,
    required this.obsWidth,
    required this.obsX,
    required this.obsY,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(obsX, obsY),
      child: Container(
        height: obsHeight,
        width: obsWidth,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(
            color: Colors.grey.shade800,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
