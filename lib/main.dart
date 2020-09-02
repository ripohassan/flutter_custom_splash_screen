import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 9),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
//    return Container(
////        color: Colors.white,
////        child:FlutterLogo(size:MediaQuery.of(context).size.height)
////    );

    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/ic_bg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: new Container(
            margin: const EdgeInsets.only(top: 50.0,left: 20,right: 20),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image(
                      image: new AssetImage("assets/ic_logo.png"),
                      fit: BoxFit.fill,

                    ),

                ],
                ),
                Column(children: <Widget>[
                  Image(
                    image: new AssetImage("assets/ic_text.png"),
                  ),
                ],
                ),
                Column(children: <Widget>[
                  Image(
                    image: new AssetImage("assets/ic_bag.png"),
                  ),
                ],
                ),
              ],

            )




        ),
        /* add child content content here */
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CustomSplash")),
      body: Center(
          child: Text(
        "Home page",
        textScaleFactor: 2,
      )),
    );
  }
}
