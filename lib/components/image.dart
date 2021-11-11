import 'package:flutter/material.dart';

class ImageCircle extends StatelessWidget {
  String imageRef;

  ImageCircle({required this.imageRef});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
      child: CircleAvatar(
        backgroundImage: AssetImage(imageRef),
        radius: 50.0,
      ),
    );
  }
}
