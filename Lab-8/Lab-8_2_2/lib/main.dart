// import 'package:flutter/material.dart';
// //import 'package:lab8_2/quote.dart';
// import 'quote.dart'; // due to same directory file no need path
//
// void main() => runApp(MaterialApp(
//       home: EchoList(),
//     ));
//
// class EchoList extends StatefulWidget {
//   const EchoList({Key? key}) : super(key: key);
//   @override
//   State<EchoList> createState() => _EchoListState();
// }
//
// class _EchoListState extends State<EchoList> {
//   List<Quote> quotes = [
//     Quote(
//         text:
//             'Life is like riding a bicycle. To keep your balance, you must keep moving.',
//         author: 'Albert Einstein'),
//     Quote(
//         author: 'W. P. Kinsella',
//         text:
//             'Success is getting what you want, happiness is wanting what you get.'),
//     Quote(
//         text:
//             "I don't care that they stole my idea . . I care that they don't have any of their own.",
//         author: 'Nikola Tesla'),
//   ];
//   Widget quoteTemplate(quote) {
//     return Card(
//       margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               quote.text,
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.deepPurple,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               quote.author,
//               style: TextStyle(
//                 fontSize: 26,
//                 color: Colors.deepPurple,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlueAccent[100],
//       appBar: AppBar(
//         title: Text('Quotes'),
//         centerTitle: true,
//         backgroundColor: Colors.orangeAccent,
//       ),
//       body: Column(
// // mainAxisAlignment: MainAxisAlignment.center,
// // crossAxisAlignment: CrossAxisAlignment.center,
//         children: quotes.map((quote) => quoteTemplate(quote)).toList(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
// import 'package:lab_8_2_2/quote.dart';
import 'quote.dart'; // due to same directory file no need path

void main() => runApp(MaterialApp(
      home: EchoList(),
    ));

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
/*
 List<String> quotes = [
 'The truth is realy pure and never sim  ple',
 'I see humans but no humanity',
 'The time is always right to do what is right'
 ];
// List<String> author = [];
*/
/* this will create error..because list is now not of string....
 List<String> quotes = [
 Quote(text: 'The truth is realy pure and never simple',author:
'jignesh1'),
 ];
*/
  List<Quote> quotes = [
    Quote(text: 'Life is like riding a bicycle. To keep your balance, you must keep moving.', author: 'Albert Einstein'),
    Quote(author: 'W. P. Kinsella', text: 'Success is getting what you want, happiness is wanting what you get.'),
    Quote(
        text: "I don't care that they stole my idea . . I care that they don't have any of their own.",
        author: 'Nikola Tesla'),
  ];
  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 24,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                '- ' + quote.author,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
