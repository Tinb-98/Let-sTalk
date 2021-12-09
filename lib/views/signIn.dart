import 'package:flutter/material.dart';
import 'package:lets_talk/Cstm%20Widgets/widget.dart';

class SignIn extends StatefulWidget {


  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize:MainAxisSize.min ,
            children: [
              TextField(
                style: TextStyle(color: Colors.white70),
                decoration: InputDecoration(
                  hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  )
                ),
              ),
              TextField(
                style: TextStyle(color: Colors.white70),
                decoration: InputDecoration(
                    hintText: "Password" ,
                    hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                    )
                ),
              ),
              SizedBox(height: 8,),
              Container(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                  child: Text("Forget Password?",style: TextStyle(color: Colors.white),),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20) ,
                decoration: BoxDecoration(
                  color: (const Color(0xff8c8c8c)),
                  borderRadius: BorderRadius.circular(30),
                ) ,
                child: Text("Sign In"),
              ),
              SizedBox(height: 8,),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20) ,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ) ,
                child: Text("Sign In With Google"),
              ),
               SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an Account?",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0
                  ),
                  ),
                  Text("Register Now",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    decoration: TextDecoration.underline
                  ),
                  )
                ],
              ),
              SizedBox(height: 90,)
            ],
          ),
        ),
      ),
    );
  }
}
