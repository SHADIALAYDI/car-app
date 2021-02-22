import 'package:first/sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
class SignIn extends StatefulWidget {
  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<SignIn> {
  Widget text(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (con)=>Login2()));
              },
              child: Text(
                "Sign Up",
                style: TextStyle(
                     fontSize: 20, fontWeight: FontWeight.bold),
              )),
          FlatButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (con)=>SignIn()));
            },
            child: Text(
              "Sign In",
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget field(txt){
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: txt,
        labelStyle: TextStyle(fontSize: 20,),
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              text(),
              SizedBox(height: 80,),
              Text("Welcome to Sign In!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              Text("Lets get started",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 70,),
              field("Email"),
              SizedBox(height: 10,),
              TextField(
                obscureText: false,
                keyboardType:TextInputType.visiblePassword ,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 20,),
                ),
              ),
              SizedBox(height: 30,),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                child: IconButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (con)=>Home()));
                  },
                  icon: Icon(Icons.arrow_forward,color: Colors.white,),
                  iconSize: 30,
                ),
              )



            ],

          ),
        ),
      ),
    );
  }
}
