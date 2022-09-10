import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: shah(),
    );
  }
}

class shah extends StatefulWidget {
  const shah({Key? key}) : super(key: key);

  @override
  State<shah> createState() => _shahState();
}

class _shahState extends State<shah> {
  String? Jurisdiction;
  List<String> Jurisdictionitems = [
    'Item1',
    'Item2',
    'Item3',
  ];
  String? Activity;
  List<String> Activityitems = [
    'Item1',
    'Item2',
    'Item3',
  ];

  @override
  Widget build(BuildContext context) {
    return
         Material(
           child: Row(
            children: [
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Jurisdiction",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Container(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            hint: Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    'Free sone',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            items: Jurisdictionitems.map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                )).toList(),
                            value: Jurisdiction,
                            onChanged: (value) {
                              setState(() {
                                Jurisdiction = value.toString();
                              });
                            },
                            buttonHeight: 40,
                            buttonWidth: 300,
                            dropdownMaxHeight: 150,
                            buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                            buttonDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            itemPadding: const EdgeInsets.only(left: 14, right: 14),
                            dropdownWidth: 280,
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Jurisdiction",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Container(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            hint: Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    'Free sone',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            items: Activityitems.map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            )).toList(),
                            value: Activity,
                            onChanged: (value) {
                              setState(() {
                                Activity = value.toString();
                              });
                            },
                            buttonHeight: 40,
                            buttonWidth: 300,
                            dropdownMaxHeight: 150,
                            buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                            buttonDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            itemPadding: const EdgeInsets.only(left: 14, right: 14),
                            dropdownWidth: 280,
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
        ),
         );
  }
}
//====================
//=============================
//==============
//===============

// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: shah(),
//     );
//   }
// }
//
// class shah extends StatefulWidget {
//   const shah({Key? key}) : super(key: key);
//
//   @override
//   State<shah> createState() => _shahState();
// }
//
// class _shahState extends State<shah> {
//   final List<String> genderItems = [
//     'Male',
//     'Female',
//   ];
//
//   final List<String> genItems = [
//     'Mae',
//     'Fele',
//   ];
//
//   String? selectedValue;
//
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: _formKey,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 80),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//               DropdownButtonFormField2(
//                 decoration: InputDecoration(
//
//
//                  // contentPadding: EdgeInsets.zero,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//
//                 ),
//                 isExpanded: true,
//                 hint: const Text(
//                   'Jurisdiction',
//                   style: TextStyle(fontSize: 14,color: Colors.black),
//                 ),
//                 icon: const Icon(
//                   Icons.keyboard_arrow_down,
//                   color: Colors.black45,
//                 ),
//                 iconSize: 30,
//                 buttonHeight: 40,
//                // buttonPadding: const EdgeInsets.only(left: 20, right: 10),
//                 dropdownDecoration: BoxDecoration(
//                   color: Colors.green,
//                 ),
//                 items: genderItems
//                     .map((item) => DropdownMenuItem<String>(
//                           value: item,
//                           child: Text(
//                             item,
//                             style: const TextStyle(
//                               fontSize: 14,
//                             ),
//                           ),
//                         ))
//                     .toList(),
//                 validator: (value) {
//                   if (value == null) {
//                     return '';
//                   }
//                 },
//                 onChanged: (value) {
//                   //Do something when changing the item if you want.
//                 },
//                 onSaved: (value) {
//                   selectedValue = value.toString();
//                 },
//               ),
//               DropdownButtonFormField2(
//                 decoration: InputDecoration(
//
//                   // contentPadding: EdgeInsets.zero,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//
//                 ),
//                 isExpanded: true,
//                 hint: const Text(
//                   'Jurisdiction',
//                   style: TextStyle(fontSize: 14,color: Colors.black),
//                 ),
//                 icon: const Icon(
//                   Icons.keyboard_arrow_down,
//                   color: Colors.black45,
//                 ),
//                 iconSize: 30,
//                 buttonHeight: 40,
//                 // buttonPadding: const EdgeInsets.only(left: 20, right: 10),
//                 dropdownDecoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(0),
//
//                 ),
//                 items: genItems
//                     .map((item) => DropdownMenuItem<String>(
//                   value: item,
//                   child: Text(
//                     item,
//                     style: const TextStyle(
//                       fontSize: 14,
//                     ),
//                   ),
//                 ))
//                     .toList(),
//                 validator: (value) {
//                   if (value == null) {
//                     return '';
//                   }
//                 },
//                 onChanged: (value) {
//                   //Do something when changing the item if you want.
//                 },
//                 onSaved: (value) {
//                   selectedValue = value.toString();
//                 },
//               ),
//
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
