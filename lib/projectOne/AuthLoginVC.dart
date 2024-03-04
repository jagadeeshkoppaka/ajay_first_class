import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:onlineflutterclass/ListInListVC.dart';

import 'AuthRegisterVC.dart';

class AuthLoginVC extends StatefulWidget {
  const AuthLoginVC({Key? key}) : super(key: key);

  @override
  State<AuthLoginVC> createState() => _AuthLoginVCState();
}

class _AuthLoginVCState extends State<AuthLoginVC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.deepPurpleAccent,
              Colors.white,
              Colors.cyanAccent
            ])),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterLogo(
                      size: 35,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "FF TASKS",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 30),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Create an account by using the form below.",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                isDense: true,
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1.5, color: Colors.black),
                                    borderRadius: BorderRadius.circular(8)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1.5, color: Colors.black),
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Password",
                                isDense: true,
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                suffixIcon: Icon(Icons.visibility),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1.5, color: Colors.black),
                                    borderRadius: BorderRadius.circular(8)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1.5, color: Colors.black),
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      MaterialButton(
                        onPressed: () {
                          print("Create Account Tapped");
                        },
                        color: Colors.blue,
                        splashColor: Colors.blue,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        minWidth: MediaQuery.of(context).size.width - 60,
                        height: 50,
                        child: const Text('Create Account'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'Already Have an Account?  ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    decoration: TextDecoration.none),
                              ),
                              TextSpan(
                                text: 'Sign in here',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AuthRegister()));
                                    print("Sign in here tapped");
                                  },
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    decoration: TextDecoration.none),
                              )
                            ])),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
