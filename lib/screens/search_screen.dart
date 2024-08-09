import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_app/constants/constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final categories = <String>[
    'All',
    'Account',
    'Hashtag',
    'Caption',
    'Story',
    'Commercial',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BLACK,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                height: 46,
                margin: EdgeInsets.symmetric(
                  horizontal: 17,
                  vertical: 20,
                ),
                child: TextField(
                  cursorColor: WHITE,
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(
                    fontFamily: 'gilroy',
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    height: 1.33,
                    color: WHITE,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(
                      fontFamily: 'gilroy',
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      height: 1.33,
                      color: WHITE,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Color(0xFF272B40),
                    filled: true,
                    prefixIcon: Icon(
                      IconsaxOutline.search_normal_1,
                      color: WHITE,
                      size: 26,
                    ),
                    suffixIcon: Icon(
                      IconsaxBold.scan,
                      size: 26,
                      color: WHITE,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 23,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(right: 15),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff272B40),
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          fontFamily: 'gilroy',
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          height: 1.6,
                          color: WHITE,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: 17,
                vertical: 20,
              ),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage('images/item${index % 10}.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  pattern: [
                    QuiltedGridTile(2, 1),
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
