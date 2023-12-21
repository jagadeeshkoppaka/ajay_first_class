import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List arrayOfStrings = ["Ajay", "Jack", "Vinay", "Ajay"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Center(
            child: Text("Listview"),
          ),
          Container(
            height: 300,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 100,
                      color: Colors.green,
                    ),
                  );
                }),
          ),
          Spacer(),
          ElevatedButton(onPressed: () {}, child: Text("asdd")),
        ],
      ),
    ));
  }
}
