import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:untitled/constans.dart';
import 'package:untitled/home/components/sidebar_container.dart';
import "package:untitled/model/blog.dart";

import '../responsive.dart';
import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_post.dart';
import 'components/search.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
              children: List.generate(
            blogPosts.length,
            (index) => BlogPostCard(
              blog: blogPosts[index],
            ),
          )),
        ),
    if(!Responsive.isMobile(context)) SizedBox(
          width: kDefaultPadding,
        ),

        ///=========side bar
        if(!Responsive.isMobile(context)) Expanded(
          child: 
          
          
          
          Column(
            children: const [
              search(),
              SizedBox(
                height: kDefaultPadding,
              ),
              Categories(),
              SizedBox(
                height: kDefaultPadding,
              ),
              recent_post(),

            ],
          ),
        ),
      ],
    );
  }
}

