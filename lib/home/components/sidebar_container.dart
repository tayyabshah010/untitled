import 'package:flutter/material.dart';

import '../../constans.dart';
class SidebarContainer extends StatelessWidget {
  final String title;
  final Widget child;

  const SidebarContainer({
    Key? key, required this.title, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(kDefaultPadding /4),
        ),
      ),
      child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w600, color: kDarkBlackColor),
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          child,
        ],
      ),
    );
  }
}