import 'PPMLine.dart';
import 'package:boltandnut/RegisterPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginPage extends StatelessWidget {

  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30),
          height: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
            ),
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400],
            ]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Hero(
                  tag: 'logo',
                  child: Image.asset(
                    'images/MalaysiaAirports.png',
                    cacheWidth: 150,
                  ),
                ),
                Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 48),
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.deepOrange,
                              blurRadius: 20,
                              offset: Offset(0, 10))
                        ],
                      ),
                      child: TextField(
                        onChanged: (value){
                          email = value;
                        },
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.deepOrange,
                              blurRadius: 20,
                              offset: Offset(0, 10))
                        ],
                      ),
                      child: TextField(
                        onChanged: (value){
                          password = value;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.grey),
                            ),
                            onPressed: () {}),
                        SizedBox(width: 10),
                        Text(
                          '|',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(width: 10),
                        TextButton(
                          child: Text(
                            'Register',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()),
                            );
                          },
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () async {
                        try {
                        final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
                        if (user != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),);
                          }
                        }
                        catch (e) {
                          print(e);
                        }
                      },
                      child: Container(
                        height: 30,
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.deepOrange,
                        ),
                        child: Center(
                            child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
