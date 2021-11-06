import 'package:apipa_game_flutter/components/buttons.dart';
import 'package:apipa_game_flutter/components/image.dart';
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
            ImageCircle(
              imageRef: 'assets/images/jv.jpg',
            ),
            Text(
              'João Victor Sena',
              style: kInfoStyle,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonImage(
                    url: 'https://www.linkedin.com/in/jvsena42/',
                    imgRef: 'assets/images/ic_linkedin.svg',
                  ),
                  ButtonImage(
                    url: 'https://www.instagram.com/jvsena42/',
                    imgRef: 'assets/images/ic_instagram.svg',
                  ),
                ],
              ),
            ),
            ImageCircle(
              imageRef: 'assets/images/renatho.jpg',
            ),
            Text(
              'Renatho Henrique',
              style: kInfoStyle,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonImage(
                    url: 'https://www.linkedin.com/in/renathohcc/',
                    imgRef: 'assets/images/ic_linkedin.svg',
                  ),
                  ButtonImage(
                    url: 'https://www.instagram.com/renathohcc/',
                    imgRef: 'assets/images/ic_instagram.svg',
                  ),
                ],
              ),
            ),
            ImageCircle(
              imageRef: 'assets/images/luana.jpg',
            ),
            Text(
              'Luana Reis',
              style: kInfoStyle,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonImage(
                    url: 'https://www.linkedin.com/in/luanareis9/',
                    imgRef: 'assets/images/ic_linkedin.svg',
                  ),
                  ButtonImage(
                    url: 'https://www.instagram.com/lu_reis9/',
                    imgRef: 'assets/images/ic_instagram.svg',
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