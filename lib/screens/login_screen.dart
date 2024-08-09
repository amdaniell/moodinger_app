import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_app/constants/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode __emailNode = FocusNode();
  FocusNode __passwordsNode = FocusNode();

  @override
  void initState() {
    super.initState();

    __emailNode.addListener(() {
      setState(() {});
    });
    __passwordsNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    __emailNode.dispose();
    __passwordsNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF323A99),
              Color(0xFFF98BFC),
            ],
            begin: AlignmentDirectional.topCenter,
            end: AlignmentDirectional.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                top: 50,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Expanded(
                      child: Image(
                        image: AssetImage('images/rocket.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        color: BLACK,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50, bottom: 36),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sign in to',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge
                                      ?.copyWith(
                                        height: 1.0,
                                      ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Image(
                                  image: AssetImage('images/mood.png'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 340,
                            child: Column(
                              children: [
                                TextField(
                                  focusNode: __emailNode,
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    labelStyle: Theme.of(context)
                                        .inputDecorationTheme
                                        .labelStyle
                                        ?.copyWith(
                                          color:
                                              __emailNode.hasFocus ? RED : GREY,
                                        ),
                                  ),
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                SizedBox(
                                  height: 32,
                                ),
                                TextField(
                                  focusNode: __passwordsNode,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: Theme.of(context)
                                        .inputDecorationTheme
                                        .labelStyle
                                        ?.copyWith(
                                          color: __passwordsNode.hasFocus
                                              ? RED
                                              : GREY,
                                        ),
                                  ),
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                  obscureText: true,
                                ),
                                SizedBox(
                                  height: 32,
                                ),
                                SizedBox(
                                  width: 129,
                                  height: 46,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Sign in'),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Don\'t have an account? /',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            color: WHITE.withOpacity(0.5),
                                          ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Sign up',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
