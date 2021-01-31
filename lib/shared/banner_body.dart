import 'package:flutter/material.dart';

class BannerBody extends StatelessWidget {
  const BannerBody({
    Key key,
    this.assetImage,
  }) : super(key: key);
  final AssetImage assetImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 30.0, top: 12.0, right: 30.0, bottom: 10.0),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: assetImage,
            fit: BoxFit.cover,
          ),
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }
}
