import 'package:apipa_game_flutter/components/buttons.dart';
import 'package:apipa_game_flutter/constants/colors.dart';
import 'package:apipa_game_flutter/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/jv.jpg'),
                    fit: BoxFit.fill),
              ),
            ),
            Text(
              'João Victor',
              style: kInfoStyle,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ButtonImage(
                      url: 'https://www.linkedin.com/in/jvsena42/',
                      imgRef: 'assets/images/ic_linkedin.svg',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ButtonImage(
                      url: 'https://www.instagram.com/jvsena42/',
                      imgRef: 'assets/images/ic_instagram.svg',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
