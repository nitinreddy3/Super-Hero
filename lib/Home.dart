import 'package:flutter/material.dart';
import 'HeroDetails.dart';

class Home extends StatelessWidget {
  final data;

  Home(this.data);

  Widget HeroContainer(Map currentItem) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            currentItem['image']['url'],
            // width,
            height: 100,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
          ),
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
          child: Text('Super Heroes'),
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
          : Text('Loading...'),
    );
  }
}
