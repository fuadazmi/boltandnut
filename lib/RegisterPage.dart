import 'package:boltandnut/LoginPage.dart';
import 'PPMLine.dart';
import 'package:boltandnut/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:firebase_auth/firebase_auth.dart';


class RegisterPage extends StatelessWidget {

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
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 48),
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 50,),
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
                                offset: Offset(0, 10)
                            )
                          ],
                        ),
                        child: TextField(
                          onChanged: (value) {
                            email = value;
                          },
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 20),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none
                          ),
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
                                offset: Offset(0, 10)
                            )
                          ],
                        ),
                        child: TextField(
                          onChanged: (value) {
                            password = value;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 20),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () async {
                          try {
                            final newUser = await _auth
                                .createUserWithEmailAndPassword(
                                email: email, password: password);
                            if (newUser != null) {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                              );
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
                          child: Center(child: Text('Register',
                            style: TextStyle(
                                color: Colors.white, fontSize: 15),)),
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
