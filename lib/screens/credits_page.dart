import 'package:apipa_game_flutter/constants/colors.dart';
import 'package:apipa_game_flutter/constants/text_styles.dart';
import 'package:flutter/material.dart';

class Credits extends StatefulWidget {
  @override
  _CreditsState createState() => _CreditsState();
}

class _CreditsState extends State<Credits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Este Jogo foi criado por'),
        centerTitle: true,
        backgroundColor: kDarkYellow,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/jv.jpg'),
                    fit: BoxFit.fill
                ),
              ),
            ),
            Text(
                'João Victor',
              style: kInfoStyle,
            ),
            Row()
          ],
        ),
      ),
    );
  }
}
