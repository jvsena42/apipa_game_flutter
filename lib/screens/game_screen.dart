import 'dart:async';

import 'package:apipa_game_flutter/elements/dog.dart';
import 'package:apipa_game_flutter/elements/obstacle.dart';
import 'package:apipa_game_flutter/constants/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {

  static const String id = "gamepage";

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  //Dog Variables
  double dogX = 0.0;
  double dogY = 1.0;

  //Obstacle Variable
  double obsWidth = 35;
  double obsHeight = 50;
  double obsX = 1;
  double obsY = 1;

  //jump variables
  double time = 0.0;
  double gravity = 9.8;
  double height = 0.0;
  double jumpForce = 3;

  //Game Settings
  bool isJumping = false;
  bool isGameRunning = false;

  //Function to start the Game
  void gameStart() {
    setState(() {
      isGameRunning = true;
    });

    Timer.periodic(const Duration(milliseconds: 20), (timer) {
      setState(() {
        obsX -= 0.01;
      });

      //obstacles looping
      obsLoop();
    });
  }

  //Function to loop the obstacles
  void obsLoop() {
    setState(() {
      if (obsX <= -1.2) {
        obsX = 1.2;
      }
    });
  }

  //Function to Jump
  void jump() {
    isJumping = true;
    Timer.periodic(const Duration(milliseconds: 20), (timer) {
      height = -gravity / 2 * time * time + jumpForce * time;
      setState(() {
        if (1 - height > 1) {
          resetJump();
          dogY = 1;
          timer.cancel();
        } else {
          dogY = 1 - height;
        }

        time += 0.01;
      });
    });
  }

  //Function to reset the jump
  void resetJump() {
    isJumping = false;
    time = 0;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isGameRunning) {
          jump();
        } else {
          gameStart();
        }
      },
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.amber,
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      Container(
                          alignment: const Alignment(0, 0.1),
                          child: isGameRunning
                              ? const Text('')
                              : const Text('T A P  T O  P L A Y',
                                  style: kDefaultStyle)),
                      MyDog(
                        dogX: dogX,
                        dogY: dogY,
                      ),
                      Obstacle(
                        obsHeight: obsHeight,
                        obsWidth: obsWidth,
                        obsX: obsX,
                        obsY: obsY,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.brown,
                child: Center(
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                'SCORE',
                                style: kInfoStyle,
                              ),
                              Text(
                                '20',
                                style: kInfoStyle,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                'BEST',
                                style: kInfoStyle,
                              ),
                              Text(
                                '45',
                                style: kInfoStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
