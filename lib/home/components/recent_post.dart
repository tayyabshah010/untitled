import 'package:flutter/material.dart';
import 'package:untitled/home/components/sidebar_container.dart';

import '../../constans.dart';
class recent_post extends StatelessWidget {
  const recent_post({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Recent Post",
      child: Column(
        children: [
          RecentPostCard(
            image: 'images/recent_1.png',
            title: "Our “Secret” Formula to "
                "Online Workshops",
            press: () {},
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          RecentPostCard(
            image: 'images/recent_2.png',
            title: "Digital Product Innovations from Warsaw with Love",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecentPostCard extends StatelessWidget {
  final String title, image;
  final VoidCallback press;

  const RecentPostCard({
    Key? key,
    required this.title,
    required this.image,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: press,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(image),
            ),
            const SizedBox(
              width: kDefaultPadding,
            ),
            Expanded(
              flex: 5,
              child: Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kDarkBlackColor,
                    fontFamily: 'Raleway',
                    height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
