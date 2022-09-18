import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("HELLO FLUTTER...MY FIRST APP"),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Center(
            child: TextButton.icon(
          icon: Icon(
            Icons.photo_camera,
            color: Colors.greenAccent,
            size: 50.0,
          ),
          label: Text(
            "Gallery",
            style: TextStyle(
              color: Colors.black,
              fontSize: 40.0,
              letterSpacing: 2.0,
              backgroundColor: Colors.redAccent,
            ),
            textAlign: TextAlign.start,
          ),
          onPressed: () {},
        )));
  }
}
/* Image(
          /*
            // INSERTING NETWORK IMAGE
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL9pMnxE0SskmvGHS3G-vlCUiN0TZHUcy931q7xFWE&s'),
          */
          /*
          // AssetImage :- to use images from project packages
             image: AssetImage('assets/dog3.jpg'),
          */
          // AssetImage :- to use images from sub directory of project packages
          image: AssetImage('assets/sub_assets/subway.jpg'),
        ) */

// child: Directionality(
//     textDirection: TextDirection.rtl,
//     child: TextButton.icon(
//       icon: Icon(
//         Icons.photo_camera,
//         color: Colors.greenAccent,
//         size: 50.0,
//       ),
//       label: Text(
//         "Gallery",
//         style: TextStyle(
//           color: Colors.black,
//           fontSize: 40.0,
//           letterSpacing: 2.0,
//           backgroundColor: Colors.redAccent,
//         ),
//         textAlign: TextAlign.start,
//       ),
//       onPressed: (){},
//     )
// )
