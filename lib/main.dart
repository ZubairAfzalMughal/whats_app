import 'package:flutter/material.dart';
import 'package:whats_app/Pages/calls.dart';
import 'package:whats_app/Pages/chats.dart';
import 'package:whats_app/Pages/status.dart';
import 'package:whats_app/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kScaffoldColor
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
      appBar: appBar(),
      body: TabBarView(
        children: <Widget>[
          Chat(),
          Status(),
          Calls(),
        ],
      ),
      ),
    );
  }
  AppBar appBar(){
    return AppBar(
      centerTitle: true,
      actions: <Widget>[
        Icon(
          Icons.search,
          color: Colors.white,
        ),
      ],
      title: Text('Whats App',style: TextStyle(
        color: Colors.white,
      ),),
      bottom:TabBar(
        onTap: null,
        indicator:UnderlineTabIndicator(
          borderSide: BorderSide(
            width: 1.5,
            color: Colors.white
          ),
          insets: EdgeInsets.symmetric(horizontal:25.0,vertical: 50.0)
        ),
        tabs: <Widget>[
          Text('Chat',style: TextStyle(
            fontSize:17.0
          ),),
          Text('Status',style: TextStyle(
            fontSize: 17.0,
          ),),
          Text('Calls',style: TextStyle(
            fontSize: 17.0
          ),)
        ],
      ),
    );
  }
}