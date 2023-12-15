import 'package:flutter/material.dart';

class FirstVC extends StatefulWidget {
  const FirstVC({super.key});

  @override
  State<FirstVC> createState() => _FirstVCState();
}

class _FirstVCState extends State<FirstVC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/istockphoto-534129810-1024x1024.jpg",
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 60,
                      width: (MediaQuery.of(context).size.width),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 60,
                      width: (MediaQuery.of(context).size.width),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 15),
                        child: GestureDetector(
                          onTap: () {
                            print("Tapped");
                          },
                          child: Container(
                            height: 60,
                            width: (MediaQuery.of(context).size.width) / 2 - 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/istockphoto-534129810-1024x1024.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Text(
                              "SignIn",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 15),
                        child: GestureDetector(
                          onTap: () {
                            print("Tapped");
                          },
                          child: Container(
                            height: 60,
                            width: (MediaQuery.of(context).size.width) / 2 - 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/istockphoto-534129810-1024x1024.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Text(
                              "SignIn",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: TextButton(
                      onPressed: () {
                        print("Yaaaa");
                      },
                      child: Text(
                        "Forget Password ?",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 15),
                        child: GestureDetector(
                          onTap: () {
                            print("Tapped");
                          },
                          child: Container(
                            height: 60,
                            width: (MediaQuery.of(context).size.width) / 2 - 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/istockphoto-534129810-1024x1024.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.face),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "SignIn",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 15),
                        child: GestureDetector(
                          onTap: () {
                            print("Tapped");
                          },
                          child: Container(
                            height: 60,
                            width: (MediaQuery.of(context).size.width) / 2 - 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/istockphoto-534129810-1024x1024.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.face),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "SignIn",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
