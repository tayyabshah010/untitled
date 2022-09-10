import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../constans.dart';
import 'main_menu.dart';

void main() {
  runApp(const MyFile());
}

class MyFile extends StatelessWidget {
  const MyFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Maga menu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBgColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
          ),
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: kBodyTextColor),
            bodyText2: TextStyle(color: kBodyTextColor),
            headline5: TextStyle(color: kDarkBlackColor),
          )),
      home: const MagaMenu(),
    );
  }
}

class MagaMenu extends StatelessWidget {
  const MagaMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            //  height: 200,
            width: double.infinity,
            color: kDarkBlackColor,
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    constraints: const BoxConstraints(
                      maxWidth: kMaxWidth,
                    ),
                    child: Column(children: [
                      Row(
                        children: [
                          SvgPicture.asset("icons/logo.svg"),
                          const Spacer(),
                          main_menu(),
                          const Spacer(),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
