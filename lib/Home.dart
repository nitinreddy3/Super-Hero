import 'package:flutter/material.dart';
import 'HeroDetails.dart';

class Home extends StatelessWidget {
  final data;

  Home(this.data);

  Widget HeroContainer(Map currentItem) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          HeroDetails(currentItem),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('DC Comics Character'),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: data != null
          ? ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                var currentItem = data[index];
                return HeroContainer(currentItem);
              },
            )
          : Center(
              child: Text(
                'Loading...',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
    );
  }
}
