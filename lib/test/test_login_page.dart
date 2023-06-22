import 'package:extended_image/extended_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:recordingmanagement/test/login/loginSignInButton.dart';
import 'package:recordingmanagement/utils/authentication.dart';

import '../constants/common_size.dart';
import '../splash_screen.dart';
import '../utils/logger.dart';

class TestPage extends StatefulWidget {

  TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        Size size = MediaQuery.of(context).size;

        final sizeOfPosImg = size.width * 0.1;
        final imgSize = size.width - 32;

        return Container(
          color: Colors.white,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: common_padding),
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(children: [
                      ExtendedImage.asset('assets/imgs/carrot_intro.png'),
                      Positioned(
                        width: sizeOfPosImg,
                        left: (size.width - 32) * 0.45,
                        top: imgSize * 0.45,
                        height: sizeOfPosImg,
                        child:
                        ExtendedImage.asset('assets/imgs/carrot_intro_pos.png'),
                      )
                    ]),
                    FutureBuilder(
                      future: Authentication.initializeFirebase(context: context),
                      builder: (context,snapshot) {
                        if (snapshot.hasError) {
                          return Text('Error initializing Firebase');
                        } else if(snapshot.connectionState == ConnectionState.done) {
                          return loginSignInButton();
                        } else {
                          return SplashScreen();
                        }

                      }
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
