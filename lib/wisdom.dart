import 'package:flutter/material.dart';
import 'dart:core';

class Wisdom extends StatefulWidget {
  const Wisdom({super.key});

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  var quoteList = [
    "Don’t let yesterday take up too much of today.",
    "Every man dies. Not every man lives.",
    "Life shrinks or expands in proportion to one’s courage.",
    "Nothing is impossible. The word itself says “I’m possible!",
    "We need much less than we think we need.",
    "If things go wrong, don’t go with them.",
    "Everything has beauty, but not everyone sees it"
  ];

  int cnt = 0;
  String cquote = "Quote of the day";

  _changeQuote() {
    setState(() {
      cnt = (cnt + 1) % quoteList.length;
      cquote = quoteList[cnt];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: const Text("Quote of the day!"),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.white,
            ),
            width: double.infinity,
            height: 180,
            margin: const EdgeInsets.all(30.0),
            child: Text(
              "\"$cquote\"",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w200,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          Container(
            child: InkWell(
              splashColor: Colors.white,
              highlightColor: Colors.white,
              onTap: _changeQuote,
              customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "ENLIGHTEN ME",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
