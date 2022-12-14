import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
// const Loading({Key? key}) : super(key: key);
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {
    final response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    print(response.body); // it response in JSON form out put ...we need MAPformat..
    // print(response.body.userId); // this will not work. because its not MAPformat..
    // TO CONVERT JSON TO MAP..WE NEED TO IMPORT convert package....
    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('LOADING SCREEN'),
    );
  }
}
