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
          ListTile(
            leading: Image.network(details['image']['url']),
            title: Text(details['name']),
            subtitle: Text('Occupation: ${details["work"]["occupation"]}'),
          ),
        ],
      ),
    );
  }
}
