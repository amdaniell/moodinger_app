import 'package:flutter/material.dart';
import 'package:instagram_app/constants/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BLACK,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/pattern1.png'),
            repeat: ImageRepeat.repeat,
            opacity: 0.08,
          ),
        ),
        child: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Center(
                child: Image(
                  image: AssetImage('images/logo_splash.png'),
                  height: 77,
                ),
              ),
              Positioned(
                bottom: 32,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    Text(
                      'From',
                      style: TextStyle(
                        color: GREY,
                        fontFamily: 'gilroy',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'ExpertFlutter',
                      style: TextStyle(
                        color: BLUE,
                        fontFamily: 'gilroy',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
