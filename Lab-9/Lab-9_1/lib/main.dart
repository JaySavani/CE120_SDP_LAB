import 'package:flutter/material.dart';
import 'package:lab_9_1/quote_card.dart';
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
  List<Quote> quotes = [
    Quote(
        text:
            'Life is like riding a bicycle. To keep your balance, you must keep moving.',
        author: 'Albert Einstein'),
    Quote(
        author: 'W. P. Kinsella',
        text:
            'Success is getting what you want, happiness is wanting what you get.'),
    Quote(
        text:
            "I don't care that they stole my idea . . I care that they don't have any of their own.",
        author: 'Nikola Tesla'),
  ];
  // Widget quoteTemplate(quote) {
  //   return QuoteCard(
  //     quote: quote,
  //   );
  // }

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
        // children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}
