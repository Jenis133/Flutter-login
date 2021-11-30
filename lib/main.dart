import 'dart:io';

import 'package:flutter/material.dart';
import 'Signup.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: <String, WidgetBuilder>{
        '/signup':(BuildContext context)=>new SignupPage(),
        '/login':(BuildContext context)=>new Myhomepage()
      },
      title: 'Flutter Demo',
      theme: ThemeData(),
     home: Myhomepage(),
    );
  }
}
class Myhomepage extends StatefulWidget{
  @override
  MyhomepageState createState() => new MyhomepageState();

}
class MyhomepageState extends State<Myhomepage>{
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
                child:Text('Hello',
                style :TextStyle(
                  fontSize:80,fontWeight:FontWeight.bold
                ))
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15,175,0,0),
                child:Text('there',
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
            SizedBox(height: 20),
            Container(
              alignment: Alignment(1,0),
              padding: EdgeInsets.only(top:15,left:20),
               child: InkWell(
               child: Text('Forgot Password',
                style:TextStyle(fontWeight:FontWeight.bold,
               color: Colors.green,
               fontFamily: 'Montserrat',
               decoration: TextDecoration.underline ),
                
                )
              )
            ),
            SizedBox(height:50),
            Container(
              height:50,
              child: Material(
                borderRadius:BorderRadius.circular(20),
                shadowColor: Colors.greenAccent,
                color:Colors.green ,
                elevation:7.0,
                child: GestureDetector(
                  onTap: (){},
                  child: Center(child: Text('Login',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white)),),
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
                    Navigator.of(context).pushNamed('/signup');
                  },
                  child: Center(child: Text('Sign Up',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black)),),
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
  
  