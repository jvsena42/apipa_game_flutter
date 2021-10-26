import 'package:flutter/material.dart';

class MyDog extends StatelessWidget {
  //Dog variables
  final double dogX;
  final double dogY;

  // ignore: use_key_in_widget_constructors
  const MyDog({
    required this.dogX,
    required this.dogY,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(dogX, dogY),
      child: Image.asset('assets/images/Fox.png'),
    );
  }
}
