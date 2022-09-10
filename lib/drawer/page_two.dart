import 'package:flutter/material.dart';

import 'package:sidenavbar/sidenavbar.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget currentItem = Examplepage1();
  bool isCollapsed = false;

  void show(Widget widget) {
    setState(() {
      currentItem = widget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
        ///=======
      SideBar(
        backgroundColor: Colors.blueGrey.shade900,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        isCollapsed: isCollapsed,
        collapseIcon: CollapseIcon(
          isCollapsed: isCollapsed,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              isCollapsed = !isCollapsed;
            });
          },
        ),
        currentItem: currentItem,
        navItems: [
          NavItem(
            hoverColor: Colors.red,
            title: Text(
              "Tab 1",
              style: TextStyle(color: Colors.white),
            ),
            icon: Icon(
              Icons.call,
              color: Colors.white,
            ),
            isCollapsed: isCollapsed,
            onPressed: () {
             // show();
            },
          ),
          NavItem(
            hoverColor: Colors.blueAccent,
            title: Text("Tab 2", style: TextStyle(color: Colors.white)),
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            isCollapsed: isCollapsed,
            onPressed: () {
              show(Examplepage2());
            },
          ),
        ],
      ),
       );
  }
}

class Examplepage2 extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
return Container(color: Colors.green,);
  }}

class Examplepage1 extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.orange,);
  }}