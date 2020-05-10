import 'package:flutter/material.dart';

class HeroDetails extends StatelessWidget {
  final details;
  HeroDetails(this.details);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            details['name'],
            style: TextStyle(
              fontSize: 23,
              color: Colors.black,
            ),
          ),
          Text(
            'Full name: ${details["biography"]["full-name"]}',
            style: TextStyle(
              color: Colors.green,
            ),
            softWrap: true,
          ),
          Text(
            'Occupation: ${details["work"]["occupation"]}',
            style: TextStyle(
              color: Colors.green,
            ),
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
