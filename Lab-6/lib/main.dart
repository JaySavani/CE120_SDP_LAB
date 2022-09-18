import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomeScreen(),
      //home is property and after: is its value that is widget.
    ));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold is widgets built in flutter scaffold is one type of layout manager.
      appBar: AppBar(
        title: Text("HELLO FLUTTER...MY FIRST APP"),
        centerTitle: true, // set title at center
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text(
          "HELLO PORUS",
          style: TextStyle(
            // for style text
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
            color: Colors.grey[600], // text color
            fontFamily: 'FiraCode', // fontFamily
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // type of button at right side bottom
        onPressed: () {}, // on press this callback run
        child: Text("click"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
