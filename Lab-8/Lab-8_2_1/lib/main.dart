import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomeScreen(),
    ));

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  num age = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              // for align image in center
              child: CircleAvatar(
                // circle image
                backgroundImage: AssetImage('assets/profile.png'),
                radius: 50,
              ),
            ),
            Divider(
              height: 50,
              thickness: 2,
              indent: 2,
              endIndent: 1,
              color: Colors.white70,
            ),
            SizedBox(height: 20),
            Text(
              "NAME :",
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "John Wick",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "AGE :",
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "$age",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.red,
                ),
                SizedBox(width: 12.0),
                Text(
                  "johnwick8080@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 16.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40.0, bottom: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(
                  () {
                    if (age - 1 > 0) {
                      age -= 1;
                    }
                  },
                );
              },
              child: Icon(Icons.remove),
              backgroundColor: Colors.red,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  age += 1;
                });
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
