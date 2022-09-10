import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constans.dart';
import '../controllers/menucontroller.dart';

class main_menu extends StatelessWidget {
  final menucontroller _controller = Get.put(menucontroller());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        _controller.menuitems.length,
        (index) => webMenuItem(
          text: _controller.menuitems[index],
          isActive: index == _controller.selectedIndex,
          prss: () => _controller.setMenuIndex(index),
        ),
      ),
    );
  }
}

class webMenuItem extends StatelessWidget {
  final String text;
  final VoidCallback prss;
  final bool isActive;

  const webMenuItem({
    Key? key,
    required this.text,
    required this.prss,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: isActive ? kPrimaryColor : Colors.transparent, width: 3),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
              color: Colors.white),
        ),
      ),
    );
  }
}
