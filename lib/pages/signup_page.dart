

import 'package:flutter/material.dart';
import 'package:food_delivery/pages/sigin_page.dart';
import '../pages/sigin_page.dart';

class SignUpPage extends StatefulWidget {

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

bool _toggleVisibility = true;
bool _toggleconfirmVisibility = true;

 Widget _buildEmailTextField(){
   return TextFormField(
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        )
      ),
   );
 }

  Widget _buildUsernameTextField(){
   return TextFormField(
      decoration: InputDecoration(
        hintText: "Username",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        )
      ),
   );
 }

 Widget _buildPasswordTextField(){
   return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
          suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                _toggleVisibility = !_toggleVisibility;
              });
            },
          icon: _toggleVisibility?  Icon(Icons.visibility_off): Icon(Icons.visibility),
          ),
      ),
      obscureText: _toggleVisibility,
   );
 }

  Widget _buildConfirmPasswordTextField(){
   return TextFormField(
      decoration: InputDecoration(
        hintText: "Confirm Password",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
          suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                _toggleconfirmVisibility = !_toggleconfirmVisibility;
              });
            },
          icon: _toggleconfirmVisibility?  Icon(Icons.visibility_off): Icon(Icons.visibility),
          ),
      ),
      obscureText: _toggleconfirmVisibility,
   );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
     body: Padding(
       padding: EdgeInsets.symmetric(horizontal:10.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget> [
           Text(
             "Sign Up",
              style: TextStyle(
                fontSize: 40.0, 
                fontWeight: FontWeight.bold
                ),
                ),
           
                SizedBox(height: 10.0,),
                Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        _buildUsernameTextField(),
                         SizedBox(height:20.0),
                        _buildEmailTextField(),
                        SizedBox(height:20.0),
                        _buildPasswordTextField(),
                        SizedBox(height:20.0),
                        _buildConfirmPasswordTextField(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
                Container(
                  height:50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25.0)
                  ),
                  child: Center(
                    child: Text("Sign Up", style: TextStyle(color: Colors.white,fontSize: 18.0, fontWeight: FontWeight.bold),),
                  ),
                ),
              Divider(height: 20.0,), 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an accont?", style: TextStyle(color: Color(0xFFBDC2CB), fontSize: 17.0, fontWeight: FontWeight.bold),),
                  SizedBox(width: 10.0),
                  GestureDetector(
                     onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext) => SignInPage()));
                    },
                     child: Text(
                      "Sign In", 
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18.0, 
                        fontWeight: FontWeight.bold),
                        ),
                  ),
                ],
              ) 
         ],
       ),
     ),     
    );

  }
}

