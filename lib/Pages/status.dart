import 'package:flutter/material.dart';

import '../constant.dart';

class Status extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Upload Status',style:TextStyle(
          color:kPrimaryColor
        )),
      ),
      floatingActionButton:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
        Container(
          width: 100.0,
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(17.0),
              bottomRight: Radius.circular(17.0)
            ),
          ),
          child: Text('Upload Status',textAlign: TextAlign.center,style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700
          ),)
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