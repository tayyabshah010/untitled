import 'package:flutter/material.dart';

import '../sidebar/ui/comple_drawer_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Checkit());
  }
}

///============================
class Checkit extends StatelessWidget {
  const Checkit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(

            color: Colors.pink,
            child: ComplexDrawer(),
          ),

        ),
        Expanded(
          //flex: 5,
          child: Container(

            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
