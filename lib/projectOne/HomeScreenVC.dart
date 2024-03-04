import 'package:flutter/material.dart';

class HomeScreenVC extends StatefulWidget {
  const HomeScreenVC({Key? key}) : super(key: key);

  @override
  State<HomeScreenVC> createState() => _HomeScreenVCState();
}

class _HomeScreenVCState extends State<HomeScreenVC> {
  bool isInProgressTapped = true;
  List<String> popUpList = ["Edit", "Delete"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Text(
                      "My Tasks",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 50),
                    child: Container(
                      height: 45,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Create Task",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isInProgressTapped = true;
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: isInProgressTapped
                                ? Colors.blue.shade50
                                : Colors.white,
                            border: Border.all(
                                width: 1,
                                color: isInProgressTapped
                                    ? Colors.purple
                                    : Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Text(
                              "In Progress",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isInProgressTapped = false;
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: isInProgressTapped
                                ? Colors.white
                                : Colors.blue.shade50,
                            border: Border.all(
                                width: 1,
                                color: isInProgressTapped
                                    ? Colors.grey.shade300
                                    : Colors.purple),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              "Completed",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              isInProgressTapped
                  ? Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 10,),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.lightGreen.shade200)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Text(
                                              "Item Name",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 24),
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 20),
                                            child: Container(
                                              margin: EdgeInsets.zero,
                                              height: 40,
                                              width: 40,
                                              child: PopupMenuButton(
                                                padding: EdgeInsets.zero,
                                                itemBuilder: (context) {
                                                  return popUpList
                                                      .map((String listItem) {
                                                    return PopupMenuItem(
                                                        value: listItem,
                                                        child:
                                                            Text(listItem));
                                                  }).toList();
                                                },
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                      width: 1,
                                                      color:
                                                          Colors.grey.shade400)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 6),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2 -
                                                  40,
                                              height: 100,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Sub title Name",
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                  SizedBox(
                                                    height: 6,
                                                  ),
                                                  Text(
                                                    "Due on : Date label",
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                  Text(
                                                    "Completed on : Date label",
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.image,
                                                size: 40,
                                                color: Colors.grey,
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Container(
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.shade200,
                                                    borderRadius:
                                                        BorderRadius.circular(8),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.grey)),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10, right: 10),
                                                    child: Text(
                                                      "Image Name",
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Container(
                                        height: 0.5,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 20, bottom: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.white,
                                                border: Border.all(
                                                    width: 1.2,
                                                    color:
                                                        Colors.deepPurpleAccent)),
                                            child: Icon(Icons.ac_unit_rounded),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              "Display Name",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 20),
                                            child: Container(
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Colors.grey)),
                                              child: Center(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 10, right: 10),
                                                  child: Text(
                                                    "Image Name",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                  : Text("completed")
            ],
          ),
        ),
      ),
    );
  }
}
