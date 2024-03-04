import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:onlineflutterclass/projectOne/HomeScreenVC.dart';

class AuthRegister extends StatefulWidget {
  const AuthRegister({Key? key}) : super(key: key);

  @override
  State<AuthRegister> createState() => _AuthRegisterState();
}

class _AuthRegisterState extends State<AuthRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.purpleAccent, Colors.cyan])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterLogo(
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "FF TASKS",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 30),
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 5, left: 20, right: 20),
                        child: Text(
                          "Fill out the information below in order to access your account",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: SizedBox(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                isDense: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2))),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: SizedBox(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.visibility),
                                hintText: "Password",
                                isDense: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2))),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreenVC()));
                            print("Sign In Tapped");
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                                child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Center(
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Don't have an account?  ",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black)),
                            TextSpan(
                                text: "Create Account",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pop(context);
                                    print("Create Account Tapped");
                                  },
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue))
                          ])),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("Forget Password Tapped");
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 20, bottom: 30),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.blueAccent),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
