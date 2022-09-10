//  import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
//
// import 'controllers/menucontroller.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// //
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home:
//       const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   OverlayState? overlayState;
//   OverlayEntry? overlayEntry;
//   OverlayEntry? overlayEntry2;
//   bool showOverlay = false;
//   int index = 0;
//   List<Widget> widgets = [
//     Container(
//         height: 40,
//         width: 60,
//         color: Colors.transparent
//     ),
//     Container(
//         height: 40,
//         width: 60,
//         color: Colors.transparent
//     ),
//     Container(
//       height: 300,
//       width: 300,
//       color: Colors.green,
//       child: TextButton(
//         child: Text('Click Me'),
//         onPressed: (){
//           print('Clicked');
//         },
//       ),
//     ),
//     Container(
//       height: 300,
//       width: 300,
//       color: Colors.black,
//       child:Column(children: [Row(
//
//        children: [   Text("data"),
//          SizedBox(width: 20,),Text("data"),SizedBox(width: 20,),Text("data")],
//
//       )],),
//       // TextButton(child: Text('Click Me'),
//       //   onPressed: (){
//       //     print('Clicked');
//       //   },
//       // ),
//     ),
//   ];
//   final layerLink = LayerLink();
//   final textButtonFocusNode = FocusNode();
//   final textButtonFocusNode1 = FocusNode();
//
//
//   void _showOverlay(BuildContext context, int index) async {
//     overlayState = Overlay.of(context)!;
//
//     overlayEntry = OverlayEntry(
//         maintainState: true,
//         builder: (context) {
//           return Positioned(
//             left:index==0?  MediaQuery.of(context).size.width * 0.43 : MediaQuery.of(context).size.width *  0.5,
//             top: MediaQuery.of(context).size.height * 0.09,
//             child: TextButton(
//               onPressed: () {},
//               onHover: (val) {
//                 if (val && showOverlay) {
//                   if (index == 0) {
//                     textButtonFocusNode.requestFocus();
//                   } else if (index == 1) {
//                     textButtonFocusNode1.requestFocus();
//                   }
//                 } else {
//                   if (index == 0) {
//                     textButtonFocusNode.unfocus();
//                   } else if (index == 1) {
//                     textButtonFocusNode1.unfocus();
//                   }
//                 }
//               },
//               child: widgets[index],
//             ),
//           );
//         });
//     overlayEntry2 = OverlayEntry(
//         maintainState: true,
//         builder: (context) {
//           return Positioned(
//             left:index==0?  MediaQuery.of(context).size.width * 0.43 : MediaQuery.of(context).size.width *  0.5,
//             top: MediaQuery.of(context).size.height * 0.13,
//             child: TextButton(
//               onPressed: () {},
//               onHover: (val) {
//                 if (val && showOverlay) {
//                   if (index == 0) {
//                     textButtonFocusNode.requestFocus();
//                   } else if (index == 1) {
//                     textButtonFocusNode1.requestFocus();
//                   }
//                 } else {
//                   if (index == 0) {
//                     textButtonFocusNode.unfocus();
//                   } else if (index == 1) {
//                     textButtonFocusNode1.unfocus();
//                   }
//                 }
//               },
//               child: widgets[index+2],
//             ),
//           );
//         });
//
//     // overlayState!.insert(overlayEntry!);
//     overlayState!.insertAll([overlayEntry!, overlayEntry2!]);
//   }
//
//   void removeOverlay() {
//     overlayEntry!.remove();
//     overlayEntry2!.remove();
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     textButtonFocusNode.addListener(() {
//       if (textButtonFocusNode.hasFocus) {
//         _showOverlay(context, 0);
//       } else {
//         removeOverlay();
//       }
//     });
//     textButtonFocusNode1.addListener(() {
//       if (textButtonFocusNode1.hasFocus) {
//         _showOverlay(context, 1);
//       } else {
//         removeOverlay();
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         height: 100,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextButton(
//               focusNode: textButtonFocusNode,
//               onHover: (val) {
//                 if (val) {
//                   textButtonFocusNode.requestFocus();
//                   showOverlay = true;
//                 }
//               },
//               onPressed: () {},
//               child: const Text('Hover'),
//             ),
//             TextButton(
//               focusNode: textButtonFocusNode1,
//               onHover: (val) {
//                 if (val) {
//                   textButtonFocusNode1.requestFocus();
//                   showOverlay = true;
//                 }
//               },
//               onPressed: () {},
//               child: const Text('Hover'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
 //========================================================
 //========================================================
 //========================================================

// class Shah extends StatelessWidget {
//   final menucontroller _controller = Get.put(menucontroller());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: OnHover(
//           builder: (bool isHovered) {
//             final color = isHovered ? Colors.amber : Colors.redAccent;
//             return Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: List.generate(
//                 _controller.menuitems.length,
//                 (index) => Container(
//                   color: color,
//                   // width: 40,
//                   // height: 40,
//
//
//                   child: Text(_controller.menuitems[index]),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class OnHover extends StatefulWidget {
//   final Widget Function(bool isHovered) builder;
//
//   const OnHover({Key? key, required this.builder}) : super(key: key);
//
//   @override
//   State<OnHover> createState() => _OnHoverState();
// }
//
// class _OnHoverState extends State<OnHover> {
//   int get selectedIndex => _selectedIndex.value;
//
//   void setMenuIndex(int index) {
//     _selectedIndex.value = index;
//   }


//   RxInt _selectedIndex = 0.obs;
//
//   List<String> get menuitems =>
//       ["Cases", "Services", "About Us ", "Careers", "Blog", " contact"];
//
//   bool isHovered = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => OnEntered(true),
//       onExit: (_) => OnEntered(false),
//
//
//       child:widget.builder(isHovered),
//     );
//   }
//
//   void OnEntered(bool isHovered) {
//     setState(() {
//       this.isHovered = isHovered;
//
//     });
//   }
// }
import 'package:flutter/material.dart';



import 'package:dropdown_button2/dropdown_button2.dart';
import 'controllers/menucontroller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:
      AddStudentForm(),
    );
  }
}

class AddStudentForm extends StatefulWidget {
  const AddStudentForm({Key? key}) : super(key: key);
  static const String id = "add-student-form";
  @override
  _AddStudentFormState createState() => _AddStudentFormState();
}

class _AddStudentFormState extends State<AddStudentForm> {
  //===============================for student
  //==========class list
  String? selectedClass1;
  List<String> item = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  //========================section
  String? selectedSection1;
  List<String> item1 = [
    'It1',
    'It2',
    'It3',
    'It4',
    'It5',
    'It6',
    'It7',
    'It8',
  ];
  //=================================gender select
  String? selectedGender1;
  List<String> item2 = [
    'Male',
    'Female',
    'Other',
  ];
  //==============================================================for parents
  //==========class list
  String? selectedClass2;
  List<String> item3 = [
    'm1',
    'm2',
    'm3',
    'm4',
    'm5',
    'm6',
    'm7',
    'm8',
  ];
  //========================section
  String? selectedSection2;
  List<String> item4 = [
    'It1',
    'It2',
    'It3',
    'It4',
    'It5',
    'It6',
    'It7',
    'It8',
  ];
  //=================================gender select
  String? selectedGender2;
  List<String> item5 = [
    'Male',
    'Female',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return
      //==========================================start form here........
      Material(
        color: Colors.black,
        child: Stack(
          //   fit: StackFit.expand,
          children: [
            Container(
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 50),
                    child: Column(
                      children: const [
                        // AutoSizeText(
                        //   "STUDENT",
                        //   style: TextStyle(
                        //       color: headingcolor1, fontSize: headingsize2),
                        // )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, right: 50),
                    child: Center(
                      child: Column(
                        children: const [
                          Icon(Icons.print),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //==========================first Card
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Card(
                margin: const EdgeInsets.all(0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Stack(
                  //fit: StackFit.expand,
                  children: [
                    //===========first Colors.green
                    const Padding(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: Text(
                        "home > Admit student",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ),
                    //============================new card
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Card(
                        color: Colors.red,
                        margin: const EdgeInsets.only(
                            left: 30, right: 70, bottom: 26, top: 10),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        //================================first heading
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Text(
                                "Student  Information",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            //===========divider Colors.green
                            const Divider(
                              color: Colors.black,
                              height: 1,
                            ),
                            //==========================first row of input form

                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  //========first
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("First Name"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              30, 0, 0, 0),
                                          child: TextField(
                                            showCursor: false,
                                            cursorColor: Colors.black,
                                            decoration: InputDecoration(
                                              fillColor: Colors.black,
                                              filled: true,
                                              isDense: true,
                                              contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10),
                                              enabledBorder: myinputborder(),
                                              focusedBorder: myfocusborder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //    =============Second
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("Last Name"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              30, 0, 0, 0),
                                          child: TextField(
                                            showCursor: false,
                                            cursorColor: Colors.black,
                                            decoration: InputDecoration(
                                              fillColor: Colors.black,
                                              filled: true,
                                              isDense: true,
                                              contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10),
                                              enabledBorder: myinputborder(),
                                              focusedBorder: myfocusborder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //    =============third
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("Class"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              20, 0, 20, 0),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton2(
                                              isExpanded: true,
                                              hint: Row(
                                                children: const [
                                                  Expanded(
                                                    child: Text(
                                                      'Select Class',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              items: item
                                                  .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ))
                                                  .toList(),
                                              value: selectedClass1,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedClass1 =
                                                  value as String;
                                                });
                                              },
                                              buttonHeight: 32,
                                              buttonWidth: 300,
                                              dropdownMaxHeight: 150,
                                              buttonPadding:
                                              const EdgeInsets.only(
                                                  left: 14, right: 14),
                                              buttonDecoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(0),
                                                border: Border.all(
                                                  color: Colors.black,
                                                ),
                                                color: Colors.white,
                                              ),
                                              itemPadding: const EdgeInsets.only(
                                                  left: 14, right: 14),
                                              dropdownWidth: 300,
                                              dropdownDecoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(0),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // =====================firs row of input form end
                                ],
                              ),
                            ),
                            //=========second row of input form start
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  //========first
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("Section"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              30, 0, 0, 0),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton2(
                                              isExpanded: true,
                                              hint: Row(
                                                children: const [
                                                  Expanded(
                                                    child: Text(
                                                      'Section',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              items: item1
                                                  .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ))
                                                  .toList(),
                                              value: selectedSection1,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedSection1 =
                                                  value as String;
                                                });
                                              },
                                              buttonHeight: 32,
                                              buttonWidth: 320,
                                              buttonPadding:
                                              const EdgeInsets.only(
                                                  left: 14, right: 14),
                                              buttonDecoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(0),
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                color: Colors.black,
                                              ),
                                              itemPadding: const EdgeInsets.only(
                                                  left: 14, right: 14),
                                              dropdownWidth: 312,
                                              dropdownMaxHeight: 150,
                                              dropdownDecoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(0),
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //    =============Second
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("Gender"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              30, 0, 0, 0),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton2(
                                              isExpanded: true,
                                              hint: Row(
                                                children: const [
                                                  Expanded(
                                                    child: Text(
                                                      'Select Gender',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              items: item2
                                                  .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ))
                                                  .toList(),
                                              value: selectedGender1,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedGender1 =
                                                  value as String;
                                                });
                                              },
                                              buttonHeight: 32,
                                              buttonWidth: 320,
                                              buttonPadding:
                                              const EdgeInsets.only(
                                                  left: 14, right: 14),
                                              buttonDecoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(0),
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                color: Colors.black,
                                              ),
                                              itemPadding: const EdgeInsets.only(
                                                  left: 14, right: 14),
                                              dropdownWidth: 312,
                                              dropdownMaxHeight: 150,
                                              dropdownDecoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(0),
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //    =============third
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("Date Of Birth"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              20, 0, 20, 0),
                                          child: TextField(
                                            showCursor: false,
                                            cursorColor: Colors.black,
                                            decoration: InputDecoration(
                                              fillColor: Colors.black,
                                              filled: true,
                                              isDense: true,
                                              contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10),
                                              enabledBorder: myinputborder(),
                                              focusedBorder: myfocusborder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // ==============second row of input form end
                                ],
                              ),
                            ),
                            //=========third row of input form start
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  //========first
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("Religion"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              30, 0, 0, 0),
                                          child: TextField(
                                            showCursor: false,
                                            cursorColor: Colors.black,
                                            decoration: InputDecoration(
                                              fillColor: Colors.black,
                                              filled: true,
                                              isDense: true,
                                              contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10),
                                              enabledBorder: myinputborder(),
                                              focusedBorder: myfocusborder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //    =============Second
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("E-Mail"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              30, 0, 0, 0),
                                          child: TextField(
                                            showCursor: false,
                                            cursorColor: Colors.black,
                                            decoration: InputDecoration(
                                              fillColor: Colors.black,
                                              filled: true,
                                              isDense: true,
                                              contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10),
                                              enabledBorder: myinputborder(),
                                              focusedBorder: myfocusborder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //    =============third
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("Roll Number"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              20, 0, 20, 0),
                                          child: TextField(
                                            showCursor: false,
                                            cursorColor: Colors.black,
                                            decoration: InputDecoration(
                                              fillColor: Colors.black,
                                              filled: true,
                                              isDense: true,
                                              contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10),
                                              enabledBorder: myinputborder(),
                                              focusedBorder: myfocusborder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // =====================firs row of input form end
                                ],
                              ),
                            ),
                            //=========fourth row of input form start
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  //========first
                                  Flexible(
                                    flex: 10,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("Address"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              30, 0, 0, 0),
                                          child: TextField(
                                            showCursor: false,
                                            cursorColor: Colors.black,
                                            decoration: InputDecoration(
                                              fillColor: Colors.black,
                                              filled: true,
                                              isDense: true,
                                              contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10),
                                              enabledBorder: myinputborder(),
                                              focusedBorder: myfocusborder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //    =============Second

                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child:
                                          Text("Upload Profile (500 X 500)"),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              20, 0, 20, 0),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 130,
                                                padding:
                                                EdgeInsets.only(left: 15),
                                                child: FlatButton(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          10.0)),
                                                  color: Colors.green,
                                                  onPressed: () {},
                                                  child: const Text(
                                                    "Choose File",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 122),
                                                  ),
                                                ),
                                              ),
                                              const Padding(
                                                padding:
                                                EdgeInsets.only(left: 16),
                                                child: Text(
                                                  "No File Chosen",
                                                  style: TextStyle(
                                                      fontSize: 123),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // =====================firs row of input form end
                                ],
                              ),
                            ),
                            //=========fifth row of input form start
                            const Padding(
                              padding: EdgeInsets.fromLTRB(28, 10, 0, 0),
                              child: Text(
                                "Parent  Information",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 121,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            //=========Sixth row of input form start
                            const Divider(
                              color: Colors.green,
                              height: 1,
                            ),
                            //=========Seventh row of input form start
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  //========first
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("First Name"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              30, 0, 0, 0),
                                          child: TextField(
                                            showCursor: false,
                                            cursorColor: Colors.black,
                                            decoration: InputDecoration(
                                              fillColor: Colors.black,
                                              filled: true,
                                              isDense: true,
                                              contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10),
                                              enabledBorder: myinputborder(),
                                              focusedBorder: myfocusborder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //    =============Second
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("Last Name"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              30, 0, 0, 0),
                                          child: TextField(
                                            showCursor: false,
                                            cursorColor: Colors.black,
                                            decoration: InputDecoration(
                                              fillColor: Colors.black,
                                              filled: true,
                                              isDense: true,
                                              contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10),
                                              enabledBorder: myinputborder(),
                                              focusedBorder: myfocusborder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //    =============third
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("Class"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              20, 0, 20, 0),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton2(
                                              isExpanded: true,
                                              hint: Row(
                                                children: const [
                                                  Expanded(
                                                    child: Text(
                                                      'Select Class',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              items: item3
                                                  .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ))
                                                  .toList(),
                                              value: selectedClass2,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedClass2 =
                                                  value as String;
                                                });
                                              },
                                              buttonHeight: 32,
                                              buttonWidth: 300,
                                              dropdownMaxHeight: 150,
                                              buttonPadding:
                                              const EdgeInsets.only(
                                                  left: 14, right: 14),
                                              buttonDecoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(0),
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                color: Colors.black,
                                              ),
                                              itemPadding: const EdgeInsets.only(
                                                  left: 14, right: 14),
                                              dropdownWidth: 300,
                                              dropdownDecoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(0),
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // =====================firs row of input form end
                                ],
                              ),
                            ),
                            //=========eighth row of input form start
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  //========first
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("Section"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              30, 0, 0, 0),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton2(
                                              isExpanded: true,
                                              hint: Row(
                                                children: const [
                                                  Expanded(
                                                    child: Text(
                                                      'Section',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              items: item4
                                                  .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ))
                                                  .toList(),
                                              value: selectedSection2,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedSection2 =
                                                  value as String;
                                                });
                                              },
                                              buttonHeight: 32,
                                              buttonWidth: 320,
                                              buttonPadding:
                                              const EdgeInsets.only(
                                                  left: 14, right: 14),
                                              buttonDecoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(0),
                                                border: Border.all(
                                                  color: Colors.black,
                                                ),
                                                color: Colors.black,
                                              ),
                                              itemPadding: const EdgeInsets.only(
                                                  left: 14, right: 14),
                                              dropdownWidth: 312,
                                              dropdownMaxHeight: 90,
                                              dropdownDecoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(0),
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //    =============Second
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("Gender"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              30, 0, 0, 0),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton2(
                                              isExpanded: true,
                                              hint: Row(
                                                children: const [
                                                  Expanded(
                                                    child: Text(
                                                      'Select Gender',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              items: item5
                                                  .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ))
                                                  .toList(),
                                              value: selectedGender2,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedGender2 =
                                                  value as String;
                                                });
                                              },
                                              buttonHeight: 32,
                                              buttonWidth: 320,
                                              buttonPadding:
                                              const EdgeInsets.only(
                                                  left: 14, right: 14),
                                              buttonDecoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(0),
                                                border: Border.all(
                                                  color: Colors.green,
                                                ),
                                                color: Colors.black,
                                              ),
                                              itemPadding: const EdgeInsets.only(
                                                  left: 14, right: 14),
                                              dropdownWidth: 312,
                                              dropdownMaxHeight: 90,
                                              dropdownDecoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(0),
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //    =============third
                                  Flexible(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 36),
                                          child: Text("Date Of Birth"),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              20, 0, 20, 0),
                                          child: TextField(
                                            showCursor: false,
                                            cursorColor: Colors.black,
                                            decoration: InputDecoration(
                                              fillColor: Colors.black,
                                              filled: true,
                                              isDense: true,
                                              contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10),
                                              enabledBorder: myinputborder(),
                                              focusedBorder: myfocusborder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // =====================firs row of input form end
                                ],
                              ),
                            ),
                            //=========ninth row of input form start
                            Row(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(290, 30, 0, 0),
                                  child: Container(
                                    width: 160,
                                    height: 34,
                                    child: FlatButton(
                                      color: Colors.green,
                                      onPressed: () {},
                                      child: const Text(
                                        "Save",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 121),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(160, 30, 0, 0),
                                  child: Container(
                                    width: 160,
                                    height: 34,
                                    child: FlatButton(
                                      color: Colors.green,
                                      onPressed: () {},
                                      child: const Text(
                                        "Reset",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 121),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),

                        //============second card end
                      ),
                    ),
                  ],
                ),
                //===================first card end
              ),
            ),

            //========================form end............
          ],
        ),
      );
  }

  OutlineInputBorder myinputborder() {
    //return type is OutColors.greenInputBorder
    return const OutlineInputBorder(
      //OutColors.green border type for TextFeild
      borderSide: BorderSide(color: Colors.green),
    );
  }

  OutlineInputBorder myfocusborder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green),
    );
  }
}


