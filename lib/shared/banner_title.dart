import 'package:flutter/material.dart';

class BannerTitle extends StatelessWidget {
  const BannerTitle({Key key, this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, top: 12.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
