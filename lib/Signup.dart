import 'dart:io';

import 'package:flutter/material.dart';
import 'Signup.dart';

class SignupPage extends StatefulWidget{
  @override
  SignupPageState createState() => new SignupPageState();

}
class SignupPageState extends State<SignupPage>{
@override
Widget build(BuildContext context){
  return new Scaffold(
    
    body:Column(
      crossAxisAlignment:CrossAxisAlignment.start ,
      children:<Widget>[
        Container(
          child:Stack(
            children:<Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(15,110,0,0),
                child:Text('Signup',
                style :TextStyle(
                  fontSize:80,fontWeight:FontWeight.bold
                ))
              ),
              Container(
                padding: EdgeInsets.fromLTRB(250,110,0,0),
                child:Text('.',
                style :TextStyle(
                  fontSize:80,fontWeight:FontWeight.bold
                ))
              )
              
            ]
          )
        ),
        Container(
          padding:EdgeInsets.only(top:35,left:20,right:20),
          child:Column(children: <Widget>[
            TextField(
              decoration: InputDecoration( labelText:'Full name',
              labelStyle: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.bold,
              color:Colors.grey)),
            ),
            SizedBox(height:20),
            TextField(
              decoration: InputDecoration( labelText:'Email',
              labelStyle: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.bold,
              color:Colors.grey)),
            ),
            SizedBox(height:20),
            TextField(
              decoration: InputDecoration( labelText:'Password',
              labelStyle: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.bold,
              color:Colors.grey)),
            ),
            SizedBox(height:20),
            TextField(
              decoration: InputDecoration( labelText:'Confirm password',
              labelStyle: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.bold,
              color:Colors.grey)),
            ),
            SizedBox(height:20),
            SizedBox(height:50),
            Container(
              height:50,
              child: Material(
                borderRadius:BorderRadius.circular(20),
                shadowColor: Colors.greenAccent,
                color:Colors.green ,
                elevation:7.0,
                child: GestureDetector(
                  onTap: (){
                     
                  },
                  child: Center(child: Text('Signup',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white)),),
                ),
              ),
            ),
             SizedBox(height:50),
            Container(
              height:50,
              child: Material(
                borderRadius:BorderRadius.circular(20),
                shadowColor: Colors.black,
                color:Colors.white ,
                elevation:7.0,
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: Center(child: Text('Back',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black)),),
                ),
              ),
            )
          ])
        )
      ]
    )
  );
}
}
  
  