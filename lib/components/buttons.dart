import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

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

class ButtonImage extends StatelessWidget {

  String url;
  String imgRef = 'assets/images/ic_linkedin.svg';

  ButtonImage({required this.url, required this.imgRef});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(url.toString());
      },
      child: SvgPicture.asset(
        imgRef,
        width: 40.0,
        height: 40.0,
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