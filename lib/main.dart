import 'package:flutter/material.dart';
import 'package:onlineflutterclass/ThirdVC.dart';
import 'package:onlineflutterclass/projectOne/AuthLoginVC.dart';

import 'ListPractice.dart';
import 'Listview.dart';
import 'RegistrationForm.dart';
import 'SecondVc.dart';
import 'ListInListVC.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AuthLoginVC(),
    );
  }
}
