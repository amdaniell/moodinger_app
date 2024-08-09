import 'dart:ui';

import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_app/constants/constants.dart';
import 'package:instagram_app/screens/share_bottomsheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BLACK,
      appBar: AppBar(
        backgroundColor: BLACK,
        title: Image(
          image: AssetImage('images/moodinger_logo.png'),
          height: 24,
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                IconsaxOutline.direct,
                color: WHITE,
                size: 30,
              ))
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: 90,
                child: ListView.builder(
                  itemCount: 10,
                  padding: EdgeInsets.only(
                    left: 17,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return index == 0
                        ? _addStory()
                        : _storyBox(
                            userImage: 'images/profile.jpg',
                            size: 64,
                            padding: 3,
                            boxRadius: 17,
                            imageRadius: 15,
                          );
                  },
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => _getPost(),
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _storyBox({
    required final String userImage,
    required final double size,
    required final double padding,
    required final double imageRadius,
    required final double boxRadius,
  }) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 19),
          width: size,
          height: size,
          decoration: BoxDecoration(
            border: Border.all(
              color: RED,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(boxRadius),
          ),
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(imageRadius),
              child: Image.asset(userImage),
            ),
          ),
        ),
        Container(
          width: 64,
          margin: EdgeInsets.only(top: 10, right: 19),
          child: Text(
            'Hello',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'gilroy',
              fontSize: 10,
              fontWeight: FontWeight.w600,
              height: 1.6,
              color: WHITE,
            ),
          ),
        ),
      ],
    );
  }

  Widget _userProfilePicture({
    required final String userImage,
    required final double size,
    required final double padding,
    required final double imageRadius,
    required final double boxRadius,
  }) {
    return Container(
      margin: EdgeInsets.only(right: 19),
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: RED,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(boxRadius),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(imageRadius),
          child: Image.asset(userImage),
        ),
      ),
    );
  }

  Widget _addStory() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            border: Border.all(
              color: WHITE,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Icon(
            IconsaxOutline.add,
            color: RED,
            size: 40,
          ),
        ),
        Container(
          width: 64,
          margin: EdgeInsets.only(top: 10, right: 19),
          child: Text(
            'Your story',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'gilroy',
              fontSize: 10,
              fontWeight: FontWeight.w600,
              height: 1.6,
              color: WHITE,
            ),
          ),
        ),
      ],
    );
  }

  Widget _getPostHeader() {
    return Container(
      height: 44,
      margin: EdgeInsets.only(left: 17),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _userProfilePicture(
            userImage: 'images/profile.jpg',
            size: 44,
            padding: 2,
            boxRadius: 12,
            imageRadius: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'amirahmadadibii',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
              Text(
                'امیراحمد برنامه‌نویس موبایل',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                  color: WHITE,
                  alignment: Alignment.centerRight,
                  splashColor: Colors.transparent,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _getPostFooter() {
    return Positioned(
      bottom: 14,
      left: 27,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            width: 340,
            height: 46,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.2),
                  Colors.white.withOpacity(0.5),
                ],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    IconsaxOutline.heart,
                    color: WHITE,
                    size: 26,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    IconsaxOutline.messages_2,
                    color: WHITE,
                    size: 26,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      barrierColor: Colors.transparent,
                      backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => Container(
                        margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: DraggableScrollableSheet(
                          builder: (context, scrollController) {
                            return ShareBottomSheet(scrollController);
                          },
                        ),
                      ),
                    );
                  },
                  icon: Icon(
                    IconsaxOutline.send_2,
                    color: WHITE,
                    size: 26,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_outline_rounded,
                    color: WHITE,
                    size: 26,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getPostBody() {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          width: 394,
          height: 440,
          child: Image.asset(
            'images/post_cover.png',
            width: 394,
            height: 394,
            alignment: Alignment.topCenter,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            IconsaxOutline.video_play,
            color: WHITE,
          ),
        ),
        _getPostFooter(),
      ],
    );
  }

  Widget _getPost() {
    return Container(
      margin: EdgeInsets.only(top: 32),
      child: Column(
        children: [
          _getPostHeader(),
          SizedBox(
            height: 23,
          ),
          _getPostBody(),
        ],
      ),
    );
  }
}
