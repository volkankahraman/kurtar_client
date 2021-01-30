import 'package:flutter/material.dart';

class DisasterCard extends StatelessWidget {
  const DisasterCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 15.0),
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/earth_quake.jpg'),
                  fit: BoxFit.cover),
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          'Deprem',
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
