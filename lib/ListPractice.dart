import 'package:flutter/material.dart';

class ListPracticeVC extends StatefulWidget {
  const ListPracticeVC({Key? key}) : super(key: key);

  @override
  State<ListPracticeVC> createState() => _ListPracticeVCState();
}

class _ListPracticeVCState extends State<ListPracticeVC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                "List Data",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 20, right: 20),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.face,
                                color: Colors.black,
                                size: 60,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 25, bottom: 20, left: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Movie Name",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "200 MB",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_right,size: 40,)
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
