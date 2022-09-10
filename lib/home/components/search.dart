import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/home/components/sidebar_container.dart';

import '../../constans.dart';
class search extends StatelessWidget {
  const search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(title: 'Search',
      child:   TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: "Type Here...",
          suffixIcon: Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            child: SvgPicture.asset("icons/feather_search.svg"),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultPadding / 2),
            ),
            borderSide: BorderSide(
              color: Color(0xFFcccccc),
            ),
          ),
        ),
      ),);
  }
}