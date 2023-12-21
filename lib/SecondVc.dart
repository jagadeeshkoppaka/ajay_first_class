import 'package:flutter/material.dart';
import 'package:onlineflutterclass/ThirdVC.dart';

class SecondVC extends StatefulWidget {
  const SecondVC({Key? key}) : super(key: key);

  @override
  State<SecondVC> createState() => _SecondVCState();
}

class _SecondVCState extends State<SecondVC> {
  TextEditingController emailTxt = TextEditingController();
  TextEditingController passwordTxt = TextEditingController();
  String passwordValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.blue,
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/istockphoto-534129810-1024x1024.jpg"),
              fit: BoxFit.fill)),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text("Sign In",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 14),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.face,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0, bottom: 10, left: 10, right: 10),
                          child: TextField(
                            controller: emailTxt,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter your Email",
                              hintStyle:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Pasword",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 14),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Center(
                          child: Icon(
                            Icons.face,
                            color: Colors.black,
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0, bottom: 10, left: 10, right: 10),
                          child: TextField(
                            controller: passwordTxt,
                            decoration: InputDecoration(
                                hintText: "Enter your Password",
                                hintStyle: TextStyle(fontSize: 12),
                                border: InputBorder.none),
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      print("Forget Password");
                    },
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () {
                    print("checkBox");
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_box,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Remember me",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: GestureDetector(
                    onTap: () async {
                      setState(() {
                        passwordValue = passwordTxt.text;
                      });

                      final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThirdVC(
                                    passwordData: passwordTxt.text,
                                    emailData: emailTxt.text,
                                  )));

                      if (result != null) {
                        setState(() {
                          emailTxt.text = result[0];
                          passwordTxt.text = result[1];
                          print("valuefromthird${emailTxt.text}");
                        });
                      } else {
                        print("object");
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  "-or-",
                  style: TextStyle(fontSize: 19, color: Colors.white),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                    child: Text(
                  "Sign in with",
                  style: TextStyle(fontSize: 19, color: Colors.white),
                )),
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "assets/istockphoto-534129810-1024x1024.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "assets/istockphoto-534129810-1024x1024.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 200, 0, 10),
                  child: Text("Dont have an account? Sign Up"),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
