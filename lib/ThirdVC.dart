import 'package:flutter/material.dart';

class ThirdVC extends StatefulWidget {
  ThirdVC({Key? key, this.passwordData, this.emailData}) : super(key: key);
  var passwordData;
  var emailData;

  @override
  State<ThirdVC> createState() => _ThirdVCState();
}

class _ThirdVCState extends State<ThirdVC> {
  bool rememberMeTapped = false;
  TextEditingController emailStr = TextEditingController();
  TextEditingController passStr = TextEditingController();
  @override
  void initState() {
    super.initState();
    setState(() {
      emailStr.text = widget.emailData;
      passStr.text = widget.passwordData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blue,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Center(
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width - 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: Colors.white),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.face,
                                  color: Colors.black,
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: TextField(
                                  controller: emailStr,
                                  cursorColor: Colors.orange,
                                  decoration: InputDecoration(
                                      hintText: "Enter your Email",
                                      border: InputBorder.none),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Center(
                          child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width - 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Icon(Icons.face),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                controller: passStr,
                                decoration: InputDecoration(
                                    hintText: "Enter your Password",
                                    border: InputBorder.none),
                              ),
                            ))
                          ],
                        ),
                      )),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {
                            print("ForgetpasswordTapped");
                          },
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Remember Me Tapped");
                        setState(() {
                          rememberMeTapped = !rememberMeTapped;
                        });
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: rememberMeTapped
                                ? Icon(Icons.radio_button_unchecked)
                                : Icon(
                                    Icons.check_box,
                                    color: Colors.white,
                                  ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              "Remember me",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () {
                          print("Login Tapped");
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 30,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "-OR-",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sign in with",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                print("Facebook Tapped");
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white),
                                child: Center(
                                    child: Text(
                                  "F",
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                print("Google Tapped");
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white),
                                child: Center(
                                    child: Text(
                                  "G",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Center(
                    child: TextButton(
                        onPressed: () {
                          print("Sing Up Tapped");
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
