import 'package:flutter/material.dart';
import 'package:flutter_book_application_vw/appdata_quotes.dart';

import 'appdata_words.dart';

class DisplayWordsScreen extends StatelessWidget {
  final WordsList appData;

  const DisplayWordsScreen({super.key, required this.appData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          letterSpacing: 2,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  appData.word,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
