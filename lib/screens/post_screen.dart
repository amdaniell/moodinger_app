import 'package:ficonsax/ficonsax.dart';

import 'package:flutter/material.dart';
import 'package:instagram_app/constants/constants.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BLACK,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 7,
                      right: 7,
                      top: 25,
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextButton.icon(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(10),
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              IconsaxOutline.arrow_down_1,
                              color: WHITE,
                              size: 20,
                            ),
                            label: const Text(
                              'Post',
                              style: TextStyle(
                                fontFamily: 'gilroy',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: WHITE,
                              ),
                            ),
                          ),
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextButton.icon(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(10),
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              IconsaxOutline.arrow_right,
                              color: WHITE,
                              size: 26,
                            ),
                            label: const Text(
                              'Next',
                              style: TextStyle(
                                fontFamily: 'gilroy',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: WHITE,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 5,
                    ),
                    height: 375,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'images/item0.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 17,
                  ),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/item${index % 10}.png',
                          fit: BoxFit.cover,
                        ),
                      );
                    }),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.only(bottom: 68),
                ),
              ],
            ),
            Container(
              height: 68,
              decoration: const BoxDecoration(
                color: Color(0xff272B40),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Draft',
                      style: TextStyle(
                        fontFamily: 'gilroy',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: WHITE,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Gallery',
                      style: TextStyle(
                        fontFamily: 'gilroy',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: WHITE,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Take',
                      style: TextStyle(
                        fontFamily: 'gilroy',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: WHITE,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
