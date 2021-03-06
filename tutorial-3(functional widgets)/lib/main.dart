import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() =>
      _QuoteListState(); //this is called state object or instance of the class
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Robin Sharma',
        text: 'We grow fearless when we do the things we fear'),
    Quote(
        author: 'John Lennon',
        text: 'Life is what happens when you are busy making other plans.'),
    Quote(
        author: 'Mae West',
        text: 'You only live once, but if you do it right, once is enough.'),
    Quote(
        author: 'David Sureway',
        text:
            'You will face many defeats in life, but never let yourself be defeated')
  ];
  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                )),
            SizedBox(height: 6.0),
            Text(quote.author,
                style: TextStyle(fontSize: 14.0, color: Colors.grey[800])),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome quotes',
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
