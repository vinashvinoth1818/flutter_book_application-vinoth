import 'package:flutter/material.dart';
import 'package:flutter_book_application_vw/appdat_themes.dart';
import 'package:flutter_book_application_vw/appdata_quotes.dart';
import 'package:flutter_book_application_vw/display_quotes_vw.dart';
import 'package:flutter_book_application_vw/display_theme.dart';
import 'package:flutter_book_application_vw/navigator_bar.dart';

class PageViewScreenTheme extends StatefulWidget {
  const PageViewScreenTheme({Key? key}) : super(key: key);

  @override
  State<PageViewScreenTheme> createState() => _PageViewScreenThemeState();
}

class _PageViewScreenThemeState extends State<PageViewScreenTheme> {
  @override
  var _selectedIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigator(),
      appBar: AppBar(
        title: Text(
          'Themes',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
            elevation: 3,
            onSelected: (value) {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                controller: PageController(viewportFraction: 0.7),
                itemCount: themeList.length,
                itemBuilder: (context, index) {
                  var _themes = themeList[index];
                  var _scale = _selectedIndex == index ? 1.0 : 0.8;

                  return TweenAnimationBuilder(
                      tween: Tween(begin: _scale, end: _scale),
                      duration: Duration(milliseconds: 360),
                      child: DisplayThemeScreen(
                        appData: _themes,
                      ),
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value,
                          child: child,
                        );
                      });
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: new Text(
                    (_selectedIndex + 1).toString() +
                        '/' +
                        (quoteslist.length.toString()),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
