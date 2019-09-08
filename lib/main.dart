import 'package:flutter/material.dart';

import 'PlaceholderWidget.dart';
import 'homepage.dart';

/*
Build by Pvnakum (youtube: Channel "BBestTech") 8 SEP 2019
https://github.com/pvnakum7/BottomNavigationFlutter
*/


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I Love INDIA',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'INDIA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  int _currentIndex = 0;

  final List<Widget> _children = [

    PlaceholderWidget(Colors.orange),
    homepage(),
    PlaceholderWidget(Colors.green)
  ];


  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Color> _backgroundcolor = [ //Get list of colors
    Colors.orange,
    Colors.white,
    Colors.green,

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: new Center(
            child: new Text(widget.title, textAlign: TextAlign.center)),

    ),

     body:
     _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar (
        onTap: onTabTapped,
        backgroundColor: _backgroundcolor[_currentIndex],
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,

            icon: Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.orange,
              icon: Icon(Icons.search),
              title: Text("Search")
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
              icon: Icon(Icons.people),
              title: Text("People"),

          ),
        ],

      ),

    );
  }


}
