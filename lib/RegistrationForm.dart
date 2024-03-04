import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 40, right: 10),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Please enter your details",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 10),
                child: Text(
                  "Your email",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter your email"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.email,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 10),
                child: Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.password,
                              size: 24,
                            ),
                            hintText: "Enter your password"),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 10),
                child: Text(
                  "Repeat Password",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.password,
                              size: 24,
                            ),
                            hintText: "Repeat password"),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: GestureDetector(
                  onTap: () {
                    print("Register Tapped");
                  },
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      print("Already have an acccount tapped");
                    },
                    child: Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: GestureDetector(
                  onTap: () {
                    print("Register Tapped");
                  },
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlue),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
