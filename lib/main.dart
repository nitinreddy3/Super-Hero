import 'package:flutter/material.dart';
import 'Home.dart';
import 'Hero.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(SuperHero());

class SuperHero extends StatefulWidget {
  @override
  _SuperHeroState createState() => _SuperHeroState();
}

class _SuperHeroState extends State<SuperHero> {
  final url = "https://superheroapi.com/api/159716468855261/search/flash";
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<String> getData() async {
    var responseData = await http.get(Uri.encodeFull(url));

    setState(() {
      var convertedData = json.decode(responseData.body);
      data = convertedData['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DC Comics Characters',
      debugShowCheckedModeBanner: false,
      home: Home(data),
    );
  }
}
