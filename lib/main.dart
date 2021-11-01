import 'package:apipa_game_flutter/constants/colors.dart';
import 'package:apipa_game_flutter/screens/game.dart';
import 'package:apipa_game_flutter/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        colorScheme: const ColorScheme.light(primary: kGreen),
        scaffoldBackgroundColor: kDarkYellow,
      ),
      initialRoute: 'home',
      routes: {
        'home': (context) => Home(),
        'game': (context) => GamePage()
      },
    );
  }
}
