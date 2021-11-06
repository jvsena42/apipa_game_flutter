import 'package:flutter/material.dart';

class ImageCircle extends StatelessWidget {

  String imageRef;

  ImageCircle({required this.imageRef});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0,top: 16.0),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage(imageRef),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}