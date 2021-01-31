import 'package:flutter/material.dart';

class DisasterCard extends StatelessWidget {
  const DisasterCard({
    Key key,
    @required this.title,
    @required this.onPressed,
    @required this.assetImage,
  }) : super(key: key);

  final Function onPressed;
  final String title;
  final AssetImage assetImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: onPressed,
              child: Container(
                width: 80,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: assetImage,
                    fit: BoxFit.cover,
                  ),
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
