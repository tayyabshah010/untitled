// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//           body: Row(
//             children: <Widget>[
//               MainMenu(title: 'Menu 1'),
//               CustomMenu(title: 'Menu 2', rootMenu: true),
//             ],
//           )),
//     );
//   }
// }
//
// enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
//
// class MainMenu extends StatefulWidget {
//   MainMenu({required this.title}) ;
//
//   final String title;
//
//   @override
//   _MainMenuState createState() => _MainMenuState();
// }
//
// class _MainMenuState extends State<MainMenu> {
//   WhyFarther _selection = WhyFarther.smarter;
//
//   @override
//   Widget build(BuildContext context) {
// // This menu button widget updates a _selection field (of type WhyFarther,
// // not shown here).
//     return Padding(
//       padding: const EdgeInsets.all(2.0),
//       child: PopupMenuButton<WhyFarther>(
//         child: Material(
//           textStyle: Theme.of(context).textTheme.subtitle1,
//           elevation: 2.0,
//           child: Container(
//             padding: EdgeInsets.all(8),
//             child: Text(widget.title),
//           ),
//         ),
//         onSelected: (WhyFarther result) {
//           setState(() {
//             _selection = result;
//           });
//         },
//         itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
//           const PopupMenuItem<WhyFarther>(
//             value: WhyFarther.harder,
//             child: Text('Working a lot harder'),
//           ),
//           const PopupMenuItem<WhyFarther>(
//             value: WhyFarther.smarter,
//             child: Text('Being a lot smarter'),
//           ),
//           const PopupMenuItem<WhyFarther>(
//             value: WhyFarther.selfStarter,
//             child: SubMenu('Sub Menu is too long'),
//           ),
//           const PopupMenuItem<WhyFarther>(
//             value: WhyFarther.tradingCharter,
//             child: Text('Placed in charge of trading charter'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class SubMenu extends StatefulWidget {
//   final String title;
//   const SubMenu(this.title);
//
//   @override
//   _SubMenuState createState() => _SubMenuState();
// }
//
// class _SubMenuState extends State<SubMenu> {
//   WhyFarther _selection = WhyFarther.smarter;
//
//   @override
//   Widget build(BuildContext context) {
// //     print(rendBox.size.bottomRight);
//
//     return PopupMenuButton<WhyFarther>(
//       child: Row(
//         children: <Widget>[
//           Text(widget.title),
//           Spacer(),
//           Icon(Icons.arrow_right, size: 30.0),
//         ],
//       ),
//       onCanceled: () {
//         if (Navigator.canPop(context)) {
//           Navigator.pop(context);
//         }
//       },
//       onSelected: (WhyFarther result) {
//         setState(() {
//           _selection = result;
//         });
//       },
//       // how much the submenu should offset from parent. This seems to have an upper limit.
//       offset: Offset(300, 0),
//       itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
//         const PopupMenuItem<WhyFarther>(
//           value: WhyFarther.harder,
//           child: Text('Working a lot harder'),
//         ),
//         const PopupMenuItem<WhyFarther>(
//           value: WhyFarther.smarter,
//           child: Text('Being a lot smarter'),
//         ),
//         const PopupMenuItem<WhyFarther>(
//           value: WhyFarther.selfStarter,
//           child: Text('Being a lot smarter'),
//         ),
//         const PopupMenuItem<WhyFarther>(
//           value: WhyFarther.tradingCharter,
//           child: Text('Placed in charge of trading charter'),
//         ),
//       ],
//     );
//   }
// }
//
// class CustomMenu extends StatefulWidget {
//   const CustomMenu({required this.title, this.rootMenu=false});
//
//   final String title;
//   final bool rootMenu;
//
//   @override
//   _CustomMenuState createState() => _CustomMenuState();
// }
//
// class _CustomMenuState extends State<CustomMenu> {
//   WhyFarther _selection = WhyFarther.smarter;
//
//   @override
//   Widget build(BuildContext context) {
// // This menu button widget updates a _selection field (of type WhyFarther,
// // not shown here).
//
//     return Padding(
//       padding: const EdgeInsets.all(2.0),
//       child: GestureDetector(
//           onTap: () {
//
//             // This offset should depend on the largest text and this is tricky when
//             // the menu items are changed
//             Offset offset = widget.rootMenu?Offset.zero:Offset(-300,0);
//
//            final RenderBox button = context.findRenderObject() as RenderBox ;
//            final RenderBox overlay =
//            Overlay.of(context)?.context.findRenderObject()  as RenderBox;
//             final RelativeRect position = RelativeRect.fromRect(
//               Rect.fromPoints(
//                 button.localToGlobal(Offset.zero, ancestor: overlay),
//                 button.localToGlobal(button.size.bottomRight(Offset.zero),
//                     ancestor: overlay),
//               ),
//               offset & overlay.size,
//             );
//             showMenu(
//                 context: context,
//                 position: position,
//                 items: <PopupMenuEntry<WhyFarther>>[
//                   const PopupMenuItem<WhyFarther>(
//                     value: WhyFarther.harder,
//                     child: Text('Working a lot harder'),
//                   ),
//                   const PopupMenuItem<WhyFarther>(
//                     value: WhyFarther.smarter,
//                     child: Text('Being a lot smarter'),
//                   ),
//                   const PopupMenuItem<WhyFarther>(
//                     value: WhyFarther.selfStarter,
//                     child: CustomMenu(title: 'Sub Menu long'),
//                   ),
//                   const PopupMenuItem<WhyFarther>(
//                     value: WhyFarther.tradingCharter,
//                     child: Text('Placed in charge of trading charter'),
//                   ),
//                 ]).then((selectedValue){
//               // do something with the value
//               if(Navigator.canPop(context)) Navigator.pop(context);
//             });
//           },
//           child: Material(
//             textStyle: Theme.of(context).textTheme.subtitle1,
//             elevation: widget.rootMenu?2.0:0.0,
//             child: Padding(
//               padding: widget.rootMenu? EdgeInsets.all(8.0):EdgeInsets.all(0.0),
//               child: Row(
//                 children: <Widget>[
//                   Text(widget.title),
//                   if(!widget.rootMenu)
//                     Spacer(),
//                   if(!widget.rootMenu)
//                     Icon(Icons.arrow_right),
//                 ],
//               ),
//             ),)
//
//       ),
//     );
//   }
// }
