import 'package:flutter/material.dart';

import '../model/cdm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ComplexDrawerPage(),
    );
  }
}

class ComplexDrawerPage extends StatefulWidget {
  const ComplexDrawerPage({Key? key}) : super(key: key);

  @override
  State<ComplexDrawerPage> createState() => _ComplexDrawerPageState();
}

class _ComplexDrawerPageState extends State<ComplexDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const ComplexDrawer(),
    );
  }

  Widget appBar() {
    return AppBar(
      title: const Text(
        "shah na kar yr",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

class ComplexDrawer extends StatefulWidget {
  const ComplexDrawer({Key? key}) : super(key: key);

  @override
  State<ComplexDrawer> createState() => _ComplexDrawerState();
}

class _ComplexDrawerState extends State<ComplexDrawer> {
  int selectedIndex = -1;
  bool  isExpanded =false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: row(),
    );
  }

  Widget row() {
    return Row(
      children: [
        blackIconMenu(),
        invisibeSubMenu(),
      ],
    );
  }

  Widget blackIconMenu() {
    return Container(
      color: Colors.orange,
      width: 100,
      child: ListView.builder(
          itemCount: cdms.length,
          itemBuilder: (context, index) {
            if(index==0)return controlButton();
            return InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                height: 45,
                // alignment: Alignment.center,
                child: Icon(
                  cdms[index].icon,
                  color: Colors.white,
                ),
              ),
            );
          }),
    );
  }

  Widget invisibeSubMenu() {
    return AnimatedContainer(
      //color: Color(0xffe3e9f7).withOpacity(),
      width: isExpanded ? 0 : 125,
      
      duration: Duration(microseconds: 500),
      child: Column(
        children: [
          Container(height: 95),
          Expanded(
            child: ListView.builder(
              itemCount: cdms.length,
              itemBuilder: (context, index) {

                CDM cmd = cdms[index];
                if(cmd==null) return Container(height: 45,);
                bool selected = selectedIndex == index;
                bool isValidsubMenu = selected && cmd.submenus.isNotEmpty;
                // if (selected && ) {
                return subMenuWidget([cmd.title]..addAll(cmd.submenus),  isValidsubMenu);
                // }
                // return invisibeSubMenuWidget();
                //   Container(
                //   child: Text(
                //     cdms[index].submenus.toString(),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }


  Widget controlButton(){
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 30),
      child: InkWell(
        onTap: expandOrShrinkDrawer,
        child: Container(
          height: 45,
          alignment: Alignment.center,
          child: FlutterLogo(
            size: 40,
          ),
        ),
      ),
    );
  }

  // Widget invisibeSubMenuWidget() {
  //   return Container(
  //     height: 45,
  //     color: Colors.blue,
  //   );
  // }

  Widget subMenuWidget(
       List<String> submenus, bool isValidsubMenu) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 500),
      height: isValidsubMenu ? submenus.length.toDouble() * 37.5 : 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isValidsubMenu ? Color(0xff1d1b31) : Colors.transparent,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),


      child: ListView.builder(
        padding: const EdgeInsets.all(6),
        itemCount: isValidsubMenu ? submenus.length : 0,
        itemBuilder: (context, index) {
          String subMenu = submenus[index];
          return InkWell(
            onTap: () {
              ///=====handle function
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                subMenu,
                style: const TextStyle(
                    //color: index == 0 ?
                    // Colors.black:Colors.orange,
                    // fontWeight: FontWeight.bold,fontSize: index==0?17:14,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  List<CDM> cdms = [
    CDM(
      Icons.grid_view,
      "shahh",
      ["Html & css ", "ooh no"],
    ),
    CDM(
      Icons.grid_view,
      "shahh",
      ["hi ", "ooh no"],
    ),
    CDM(
      Icons.grid_view,
      "shahh",
      ["hi ", "ooh no"],
    ),
    CDM(
      Icons.grid_view,
      "shahh",
      [],
    ),
  ];

  void expandOrShrinkDrawer(){
    setState(() {
      isExpanded = !isExpanded;
    });
  }
}
