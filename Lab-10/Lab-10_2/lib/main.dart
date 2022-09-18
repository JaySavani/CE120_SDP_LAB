import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:lab_10_2/services/word_time.dart';
void main() => runApp(MaterialApp(
// home: Home(),
// instead of making home: property to make any page to initialize at beginning...
// we can use following code ....
// initialRoute: '/home',
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
    }
));
class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
  String? time = 'LOADING..........';
  void setWorldTime() async {
    WordTime timeinstance =
    WordTime(location: 'Mexico_City',flag: 'America.png',url: 'America/Mexico_City');
    await timeinstance.getTime();
// print(timeinstance.time);
    setState(() {
      time = timeinstance.time;
    });
  }
  @override
  void initState() {
    super.initState();
    setWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(80.0),
          child: Text(time.toString()),
        )
    );
  }
}