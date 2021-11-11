import 'package:apipa_game_flutter/constants/colors.dart';
import 'package:apipa_game_flutter/screens/credits_screen.dart';
import 'package:apipa_game_flutter/screens/game_screen.dart';
import 'package:apipa_game_flutter/screens/home_screen.dart';
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
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        GamePage.id: (context) => GamePage(),
        Credits.id: (context) => Credits(),
      },
    );
  }
}
