import 'package:flutter/material.dart';
import 'package:untitled/home/components/sidebar_container.dart';

import '../../constans.dart';
class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Categories",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Category(
            press: () {},
            title:"Artificial Intelligence",
            numOfItems: 3,
          ),
          Category(
            press: () {},
            title:"Augmented reality",
            numOfItems: 4,
          ),
          Category(
            press: () {},
            title:"Development "
            ,numOfItems: 10,
          ),  Category(
            press: () {},
            title:"flutter Ui",
            numOfItems: 18,
          ),
          Category(
            press: () {},
            title:"Technology",
            numOfItems: 12,
          ),
          Category(
            press: () {},
            title:"Ui/Ux Design",
            numOfItems: 9,
          ),


        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback press;

  const Category({
    Key? key,
    required this.title,
    required this.numOfItems,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding /4),
      child: TextButton(
        onPressed: () {},
        child: Text.rich(
          TextSpan(
            text:title,
            style: const TextStyle(color: kDarkBlackColor,fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: " ($numOfItems)",
                style: const TextStyle(color: kDarkBlackColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
