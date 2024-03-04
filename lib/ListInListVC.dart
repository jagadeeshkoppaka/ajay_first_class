import 'package:flutter/material.dart';

class ListInListVC extends StatefulWidget {
  const ListInListVC({Key? key}) : super(key: key);

  @override
  State<ListInListVC> createState() => _ListInListVCState();
}

class _ListInListVCState extends State<ListInListVC> {
  @override
  var listData = [];

  addDataToList() {
    for (int i = 0; i <= 19; i++) {
      listData.add(i);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addDataToList();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                "List In List",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 19,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width - 20,
                          color: Colors.grey,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: listData.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 180,
                                  width: 90,
                                  color: Colors.red,
                                  child: Center(
                                      child: Text(
                                    listData[index].toString(),
                                    style: TextStyle(fontSize: 23),
                                  )),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
