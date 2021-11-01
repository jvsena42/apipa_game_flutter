import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {

  final String label;
  final void Function()? onPress;

  NormalButton({required this.label, this.onPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(label),
    );
  }
}