import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'chatRooms.dart';
class SignUp extends StatefulWidget {


  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth=FirebaseAuth.instance;
  late String email;
  late String password;
  TextEditingController UserNameTextEditing = new TextEditingController();
  TextEditingController EmailTextEditing = new TextEditingController();
  TextEditingController PasswordTextEditing = new TextEditingController();
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
                controller: UserNameTextEditing,
                style: TextStyle(color: Colors.white70),
                decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                    )
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: EmailTextEditing,
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
                controller: PasswordTextEditing,
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

              SignInButtonBuilder(
                text: '          Sign up',
                  padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                onPressed: ()  async {
                  try{
                    final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
                  if(newUser !=null){

                  }
                  }
                  catch(e){
                    print(e);
                  }
                },
                backgroundColor: Colors.blueAccent[700]!,
              ),

              SizedBox(height: 8,),
              SignInButton(
                Buttons.Google,
                text: "Sign up with Google",
                padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                onPressed: () {},
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an Account?",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0
                  ),
                  ),
                  Text("Sign In instead",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      decoration: TextDecoration.underline
                  ),
                  )
                ],
              ),
              SizedBox(height: 70,)
            ],
          ),
        ),
      ),
    );
  }
}
