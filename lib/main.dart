import 'dart:ui';
import 'package:first/sign.dart';
import 'package:first/signIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Login(),
    );
  }
}
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("images/unnamed.png" ,width: 350,height: 400,),
              Text("Welcome!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (con)=>SignIn()));
                  },
                  color:Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 15),
                    child: Text("Sign In",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.all(Radius.circular(15)) ,
                    border: Border.fromBorderSide(BorderSide(color: Colors.green,width: 2))
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (con)=>Login2()));
                    },
                    color:Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 15),
                      child: Text("Sign Up",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green),),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Languages:English",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
