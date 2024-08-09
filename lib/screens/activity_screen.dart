import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_app/constants/constants.dart';

enum ActivityType {
  Message,
  Follow,
  PostImage,
}

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BLACK,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: BLACK,
              height: 68,
              child: TabBar(
                controller: _tabController,
                labelColor: WHITE,
                unselectedLabelColor: Color(0xffC5C5C5),
                indicatorColor: RED,
                indicatorPadding: EdgeInsets.symmetric(
                  horizontal: 17,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                dividerHeight: 0,
                labelStyle: TextStyle(
                  fontFamily: 'gilroy',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                tabs: [
                  Tab(
                    text: 'Following',
                  ),
                  Tab(
                    text: 'You',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CustomScrollView(
                    slivers: <Widget>[
                      SliverPadding(
                        padding: EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 32,
                          bottom: 20,
                        ),
                        sliver: SliverToBoxAdapter(
                          child: Text(
                            'New',
                            style: TextStyle(
                              fontFamily: 'gilroy',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: WHITE,
                            ),
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17,
                        ),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => _Activity(
                              hasStory: true,
                              status: ActivityType.values[index % 3],
                            ),
                            childCount: 2,
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 32,
                          bottom: 20,
                        ),
                        sliver: SliverToBoxAdapter(
                          child: Text(
                            'Today',
                            style: TextStyle(
                              fontFamily: 'gilroy',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: WHITE,
                            ),
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17,
                        ),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => _Activity(
                              hasStory: true,
                              status: ActivityType.values[index % 3],
                            ),
                            childCount: 3,
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 32,
                          bottom: 20,
                        ),
                        sliver: SliverToBoxAdapter(
                          child: Text(
                            'This Week',
                            style: TextStyle(
                              fontFamily: 'gilroy',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: WHITE,
                            ),
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17,
                        ),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => _Activity(
                              hasStory: true,
                              status: ActivityType.values[index % 3],
                            ),
                            childCount: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    slivers: <Widget>[
                      SliverPadding(
                        padding: EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 32,
                          bottom: 20,
                        ),
                        sliver: SliverToBoxAdapter(
                          child: Text(
                            'New',
                            style: TextStyle(
                              fontFamily: 'gilroy',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: WHITE,
                            ),
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17,
                        ),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => _Activity(
                              hasStory: true,
                              status: ActivityType.values[index % 3],
                            ),
                            childCount: 2,
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 32,
                          bottom: 20,
                        ),
                        sliver: SliverToBoxAdapter(
                          child: Text(
                            'Today',
                            style: TextStyle(
                              fontFamily: 'gilroy',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: WHITE,
                            ),
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17,
                        ),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => _Activity(
                              hasStory: true,
                              status: ActivityType.values[index % 3],
                            ),
                            childCount: 3,
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 32,
                          bottom: 20,
                        ),
                        sliver: SliverToBoxAdapter(
                          child: Text(
                            'This Week',
                            style: TextStyle(
                              fontFamily: 'gilroy',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: WHITE,
                            ),
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 17,
                        ),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => _Activity(
                              hasStory: true,
                              status: ActivityType.values[index % 3],
                            ),
                            childCount: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _Activity(
      {final bool hasStory = false,
      final bool isNewActivity = false,
      required final ActivityType status}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
            visible: isNewActivity,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: RED,
              ),
            ),
          ),
          VerticalDivider(
            width: 7,
          ),
          _getUserProfile(hasStory: hasStory),
          VerticalDivider(
            width: 10,
          ),
          SizedBox(
            width: 200,
            height: 44,
            child: Wrap(
              spacing: 5,
              runSpacing: 5,
              clipBehavior: Clip.hardEdge,
              children: [
                Text(
                  'amirahmadadibii',
                  style: TextStyle(
                    fontFamily: 'gilroy',
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    height: 1.33,
                    color: WHITE,
                  ),
                ),
                Text(
                  'Started following you',
                  style: TextStyle(
                    fontFamily: 'gilroy',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 1.33,
                    color: Color(0xffc5c5c5),
                  ),
                ),
                Text(
                  '5 min',
                  style: TextStyle(
                    fontFamily: 'gilroy',
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    height: 1.8,
                    color: Color(0xffc5c5c5),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          getActivityType(status),
        ],
      ),
    );
  }

  Widget _getUserProfile({
    final bool hasStory = false,
  }) {
    if (hasStory) {
      return Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: RED,
            width: 2,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('images/profile.png'),
          ),
        ),
      );
    }
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: BLACK,
          width: 2,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset('images/profile.png'),
      ),
    );
  }

  Widget getActivityType(ActivityType type) {
    Widget currentType;
    switch (type) {
      case ActivityType.Follow:
        currentType = activityFollowButton();
        break;
      case ActivityType.Message:
        currentType = activityMessageButton();
        break;
      case ActivityType.PostImage:
        currentType = activityImageButton();
        break;
      default:
        currentType = Container();
        break;
    }
    return currentType;
  }

  Widget activityMessageButton() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: BorderSide(
          width: 2,
          color: Color(0xffc5c5c5),
        ),
        foregroundColor: Color(0xffc5c5c5),
      ),
      onPressed: () {},
      child: Text('Message'),
    );
  }

  Widget activityFollowButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: RED,
        foregroundColor: WHITE,
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        textStyle: TextStyle(
          fontFamily: 'gilroy',
          fontWeight: FontWeight.w700,
          fontSize: 12,
          height: 1.33,
        ),
      ),
      onPressed: () {},
      child: Text('Follow'),
    );
  }

  Widget activityImageButton() {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'images/item1.png',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
