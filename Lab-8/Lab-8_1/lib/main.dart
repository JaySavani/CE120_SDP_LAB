import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row and Column (test-1)"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.deepOrange[800],
              padding: EdgeInsets.all(30.0),
              child: Text('1'),
            ),
          ),
          Container(
            color: Colors.limeAccent,
            padding: EdgeInsets.all(30.0),
            child: Text('2'),
          ),
          Container(
            color: Colors.green[800],
            padding: EdgeInsets.all(30.0),
            child: Text('3'),
          ),
        ],
      ),
    );
  }
}
