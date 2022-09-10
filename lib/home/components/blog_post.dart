import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constans.dart';
import '../../model/blog.dart';
import '../../responsive.dart';

class BlogPostCard extends StatelessWidget {
  final Blog blog;
  const BlogPostCard({
    Key? key, required this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:kDefaultPadding),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.78,
            child: Image.asset(blog.image),
          ),
          //========container
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Design".toUpperCase(),
                      style: const TextStyle(
                        color: kDarkBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      width: kDefaultPadding,
                    ),
                    Text(
                      blog.date,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                Padding(
                  padding:  const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    blog.title,
                    maxLines: 2,overflow: TextOverflow.ellipsis,
                    style: TextStyle(

                        color: kDarkBlackColor,
                        fontSize:  Responsive.isDesktop(context) ? 32 : 24,
                        fontWeight: FontWeight.w600,
                        height: 1.3,
                        fontFamily: "Raleway"),
                  ),
                ),
                Text(
                  blog.description,
                  maxLines: 4,
                  style: const TextStyle(height: 1.5),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: const EdgeInsets.only(bottom: kDefaultPadding / 4),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: kPrimaryColor, width: 3),
                          ),
                        ),
                        child: const Text(
                          "Read More",
                          style: TextStyle(color: kDarkBlackColor),
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("icons/feather_thumbs-up.svg"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("icons/feather_message-square.svg"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('icons/feather_share-2.svg'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
