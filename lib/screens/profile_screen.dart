import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_app/constants/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BLACK,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              actions: [
                Padding(
                  padding: EdgeInsets.all(17),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: WHITE,
                    ),
                  ),
                ),
              ],
              backgroundColor: BLACK,
              expandedHeight: 170,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Image.asset(
                  'images/item1.png',
                  fit: BoxFit.cover,
                ),
              ),
              bottom: PreferredSize(
                child: Container(
                  height: 14,
                  decoration: BoxDecoration(
                    color: BLACK,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    ),
                  ),
                ),
                preferredSize: Size.fromHeight(14),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 17),
              sliver: SliverToBoxAdapter(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _getProfileHeader(),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        IconsaxOutline.edit,
                        color: WHITE,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: TabBarViewDelegate(
                TabBar(
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: RED,
                  tabs: [
                    Tab(
                      icon: Icon(
                        IconsaxBold.gallery,
                        color: WHITE,
                        size: 20,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        IconsaxOutline.archive_1,
                        color: WHITE,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            CustomScrollView(
              slivers: <Widget>[
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'images/item${index % 10}.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                    gridDelegate: SliverQuiltedGridDelegate(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      pattern: [
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(2, 2),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                      ],
                      repeatPattern: QuiltedGridRepeatPattern.inverted,
                    ),
                  ),
                ),
              ],
            ),
            CustomScrollView(
              slivers: <Widget>[
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'images/item${index % 10}.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                    gridDelegate: SliverQuiltedGridDelegate(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      pattern: [
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(2, 2),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                      ],
                      repeatPattern: QuiltedGridRepeatPattern.inverted,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _getProfileHeader() {
    return Row(
      children: [
        _getUserProfile(hasStory: true),
        VerticalDivider(
          width: 15,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'امیراحمد برنامه نویس موبایل',
              style: TextStyle(
                fontFamily: 'shabnam',
                fontWeight: FontWeight.w700,
                fontSize: 12,
                height: 1.33,
                color: WHITE,
              ),
            ),
            Divider(
              height: 5,
            ),
            Text(
              'amirahmadadibii',
              style: TextStyle(
                fontFamily: 'gilroy',
                fontWeight: FontWeight.w700,
                fontSize: 12,
                height: 1.33,
                color: Color(0xffC5C5C5),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _getUserProfile({
    final bool hasStory = false,
  }) {
    if (hasStory) {
      return Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          border: Border.all(
            color: RED,
            width: 2,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('images/profile.png'),
          ),
        ),
      );
    }
    return Container(
      width: 62,
      height: 62,
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

  Widget _getProfileIcon({
    final bool isActive = false,
  }) {
    return Container(
      width: 26,
      height: 26,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: isActive
            ? Border.all(
                color: RED,
                width: 1.5,
              )
            : Border.all(
                color: Color(0xffc5c5c5),
                width: 1.5,
              ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset('images/profile.png'),
      ),
    );
  }
}

class TabBarViewDelegate extends SliverPersistentHeaderDelegate {
  TabBar _tabBar;
  TabBarViewDelegate(this._tabBar);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: BLACK,
      child: _tabBar,
    );
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
