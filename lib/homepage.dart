import 'package:flutter/material.dart';


/*
Build by Pvnakum (youtube: Channel "BBestTech") 2019
*/


class homepage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 24;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.orange,
     body: Center(

       child: Container(
           width: 400.0,
           height: 400.0,
          decoration:  new BoxDecoration(

            image: DecorationImage(

              image: AssetImage('assets/images/ashokchakra.png'),
              fit: BoxFit.cover,
            ),
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        child: Center(

          child:
            new Text('$_counter',style: TextStyle(color: Colors.green,fontSize: 25.0,fontWeight: FontWeight.bold) ,)
        )
       ),

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.

    );
  }


}
