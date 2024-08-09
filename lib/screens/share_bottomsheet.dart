import 'dart:ui';

import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/constants.dart';

class ShareBottomSheet extends StatelessWidget {
  final ScrollController? sc;
  ShareBottomSheet(this.sc, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(36),
        topLeft: Radius.circular(36),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
        child: Container(
          padding: EdgeInsets.only(left: 40, right: 40, top: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                WHITE.withOpacity(0.5),
                WHITE.withOpacity(0.2),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              CustomScrollView(
                controller: sc,
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Container(
                          width: 67,
                          height: 5,
                          decoration: BoxDecoration(
                            color: WHITE,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Share',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'gilroy',
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                height: .66,
                                color: WHITE,
                              ),
                            ),
                            Icon(
                              IconsaxOutline.send_square,
                              color: WHITE,
                              size: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        TextField(
                          textAlignVertical: TextAlignVertical.center,
                          cursorColor: WHITE,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            hintText: 'Search...',
                            hintStyle: TextStyle(
                              fontFamily: 'gilroy',
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              height: 1.33,
                              color: WHITE,
                            ),
                            fillColor: WHITE.withOpacity(0.4),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide.none,
                            ),
                            constraints: BoxConstraints(
                              maxHeight: 46,
                            ),
                            contentPadding: EdgeInsets.zero,
                            prefixIcon: Icon(
                              IconsaxOutline.search_normal_1,
                              color: WHITE,
                              size: 26,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                      ],
                    ),
                  ),
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                        (context, index) => index == 0
                            ? _getGridItem(
                                imageName: 'images/profile.jpg',
                                accountName: 'your Story')
                            : _getGridItem(
                                imageName: 'images/profile.jpg',
                                accountName: 'AmirAhmadAdibi'),
                        childCount: 30),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 86,
                    ),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.only(
                      top: 100,
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 47,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(130, 46),
                  ),
                  onPressed: () {},
                  child: Text('Send'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getGridItem({
    required final String imageName,
    required final String accountName,
  }) {
    return SizedBox(
      width: 60,
      height: 86,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(imageName),
            ),
          ),
          Text(
            accountName,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'gilroy',
              fontSize: 12,
              fontWeight: FontWeight.w700,
              height: 1.33,
              color: WHITE,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
