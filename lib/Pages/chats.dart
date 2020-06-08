import 'package:flutter/material.dart';
import 'package:whats_app/constant.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Make Chat',style: TextStyle(
          color: kPrimaryColor
        ),),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
          width: 80.0,
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(17.0),
              bottomRight: Radius.circular(17.0)
            ),
          ),
          child: Icon(
            Icons.photo_camera,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: kPrimaryColor,
      ),
        ],
      ),
    );
  }
}