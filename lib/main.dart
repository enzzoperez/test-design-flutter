import 'package:flutter/material.dart';
import 'package:testdesignflutter/myBody/myBody.dart';

var backgroundColor = Colors.deepPurpleAccent[700];

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  
  myButtonAction() => Container(
    width: 100,
    decoration: BoxDecoration(
      color: Colors.greenAccent.withOpacity(0.2),
      borderRadius: BorderRadius.circular(20)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(Icons.check, color: Colors.lightGreenAccent,),
        Text('ENZO', style: TextStyle(
          color: Colors.lightGreenAccent
        ),)
      ],
    ),
  );
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 15),
      child: AppBar(
        leading: Icon(Icons.chevron_left),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          myButtonAction(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppBar(),
      body: myBody(),
    );
  }
}