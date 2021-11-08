import 'package:apipa_game_flutter/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class NormalButton extends StatelessWidget {

  final String label;
  final void Function()? onPress;
  final Color? color;

  NormalButton({required this.label, this.color, this.onPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(color ?? kGreen)),
      onPressed: onPress,
      child: Text(label),
    );
  }
}

class ButtonImage extends StatelessWidget {

  String url;
  String imgRef = 'assets/images/ic_linkedin.svg';

  ButtonImage({required this.url, required this.imgRef});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          _launchURL(url.toString());
        },
        child: SvgPicture.asset(
          imgRef,
          width: 40.0,
          height: 40.0,
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}