import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/constants/constants.dart';
import 'package:instagram_app/screens/activity_screen.dart';
import 'package:instagram_app/screens/home_screen.dart';
import 'package:instagram_app/screens/login_screen.dart';
import 'package:instagram_app/screens/post_screen.dart';
import 'package:instagram_app/screens/profile_screen.dart';
import 'package:instagram_app/screens/search_screen.dart';
import 'package:instagram_app/screens/splash_screen.dart';
import 'package:instagram_app/screens/switch_accounts_screen.dart';

void main() {
  runApp(const Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: RED,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: RED,
            foregroundColor: WHITE,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            textStyle: const TextStyle(
              color: WHITE,
              fontSize: 16,
              fontFamily: 'gilroy',
              fontWeight: FontWeight.w700,
              height: 1.17,
            ),
          ),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: WHITE,
            fontSize: 16,
            fontFamily: 'gilroy',
            fontWeight: FontWeight.w700,
            height: 1.17,
          ),
          displayLarge: TextStyle(
            color: WHITE,
            fontSize: 20,
            fontFamily: 'gilroy',
            fontWeight: FontWeight.w700,
            height: 1.17,
          ),
          titleMedium: TextStyle(
            color: WHITE,
            fontSize: 14,
            fontFamily: 'gilroy',
            fontWeight: FontWeight.w500,
          ),
          titleSmall: TextStyle(
            color: WHITE,
            fontFamily: 'gilroy',
            fontWeight: FontWeight.w700,
            fontSize: 12,
          ),
          displaySmall: TextStyle(
            fontFamily: 'shabnam',
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: WHITE,
            height: 1.3,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 3,
              color: GREY,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 3,
              color: RED,
            ),
          ),
          labelStyle: const TextStyle(
            fontFamily: 'gilroy',
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: GREY,
          ),
          // floatingLabelStyle: TextStyle(
          //   fontFamily: 'gilroy',
          //   fontWeight: FontWeight.w500,
          //   fontSize: 14,
          //   color: RED,
          // ),
        ),
      ),
      home: Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: _selectedIndex,
          children: const [
            HomeScreen(),
            SearchScreen(),
            PostScreen(),
            ActivityScreen(),
            ProfileScreen(),
          ],
        ),
        bottomNavigationBar: Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xff272B40),
            iconSize: 26,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            selectedItemColor: RED,
            unselectedItemColor: const Color(0xffC5C5C5),
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  IconsaxOutline.home,
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  IconsaxOutline.search_normal_1,
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  IconsaxOutline.add_square,
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  IconsaxOutline.heart,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _getProfileIcon(),
                activeIcon: _getProfileIcon(isActive: true),
                label: '',
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
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
                color: const Color(0xffc5c5c5),
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
