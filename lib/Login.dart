import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.brown[100],
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Login",
          style: TextStyle(color: Colors.brown, fontSize: 23),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          color: Colors.brown,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Image.asset(
                "images/co.webp",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 22, top: 20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome Back!",
                    style: TextStyle(
                        color: Colors.brown[500],
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                    // textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                TextField(
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  cursorColor: Colors.brown[100],
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.brown[300],
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.brown,
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.brown,
                      width: 2,
                    )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.brown,
                      width: 2,
                    )),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  cursorColor: Colors.brown[100],
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.password_sharp,
                      color: Colors.brown[300],
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.brown,
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.brown,
                      width: 2,
                    )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.brown,
                      width: 2,
                    )),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.brown[300]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                      primary: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/app_screen');
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.brown[100], fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Container(
                  // margin: EdgeInsets.only(bottom: 20),
                  // alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
