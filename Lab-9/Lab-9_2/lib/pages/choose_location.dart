import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
          title : Text('CHOOSE LOCATION'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('CHOOSE LOCATION SCREEN'),
    );
  }
}
