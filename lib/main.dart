import 'package:flutter/material.dart';
import 'package:flutter_book_application_vw/display_quotes_vw.dart';
import 'package:flutter_book_application_vw/navigator_bar.dart';
import 'package:flutter_book_application_vw/pageview_screen_quotes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     home: PageViewScreenQuotes(),
    );
  }
}


