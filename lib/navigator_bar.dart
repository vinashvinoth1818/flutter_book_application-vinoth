import 'package:flutter/material.dart';
import 'package:flutter_book_application_vw/pageview_screen_quotes.dart';
import 'package:flutter_book_application_vw/pageview_theme_screen.dart';
import 'package:flutter_book_application_vw/pageview_words_screen.dart';

class DrawerNavigator extends StatefulWidget {
  const DrawerNavigator({super.key});

  @override
  State<DrawerNavigator> createState() => _DrawerNavigatorState();
}

class _DrawerNavigatorState extends State<DrawerNavigator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Book'),
              accountEmail: Text('Verson 1'),
              currentAccountPicture: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.amber,
              ),
            ),
            ListTile(
              title: Text('Quotes'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PageViewScreenQuotes()));
              },
            ),
            ListTile(
              title: Text('Themes'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PageViewScreenTheme()));
              },
            ),
            ListTile(
              title: Text('Words'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PageViewScreenWord()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
