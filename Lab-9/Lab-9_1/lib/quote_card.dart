import 'package:flutter/material.dart';
import 'quote.dart'; // due to same directory file no need path

class QuoteCard extends StatelessWidget {
  final Quote quote;
  // final void Function() delete; // or you can use following code also
  final VoidCallback delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
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
            TextButton.icon(
              /*
                 our data doesn't exist inside this stateless widget class..
                 data are in 'main.dart' file. ..
               */
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('Delete Quote'),
            ),
          ],
        ),
      ),
    );
  }
}
