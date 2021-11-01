import 'package:apipa_game_flutter/components/buttons.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(90.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NormalButton(
                label: 'Créditos',
                onPress: (){}
              ),
              NormalButton(
                  label: 'Seja um doador',
                  onPress: (){}
              ),
              NormalButton(
                  label: 'Jogar',
                  onPress: (){
                    Navigator.pushNamed(context, 'game');
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
