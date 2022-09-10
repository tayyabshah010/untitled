import 'package:flutter/material.dart';
import 'package:untitled/dropdown_button/custom_dropdown.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "maga if work",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey,
      ),
      home: const Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 48, right: 32, left: 32),
          child: CustomDropDown(text:" not do action", text2: "sshshs"),
        ),
      ),
    );
  }
}
