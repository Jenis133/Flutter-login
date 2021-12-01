import 'dart:html';

import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  @override
  ForgotState createState() => new ForgotState();
}

class ForgotState extends State<Forgot> {
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Column(
      children: <Widget>[
        Container(
            child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
              child: Text(
                'Ohhh no Reset password now',
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              padding: EdgeInsets.only(top: 35, left: 20, right: 20),
              child: Column(children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                )
              ]),
            )
          ],
        ))
      ],
    ));
  }
}
