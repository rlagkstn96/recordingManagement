import 'package:extended_image/extended_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';

import '../../constants/common_size.dart';
import '../../data/login_platform.dart';
import '../../utils/authentication.dart';
import '../../utils/logger.dart';

class loginSignInButton extends StatefulWidget {
  @override
  State<loginSignInButton> createState() => _loginSignInButtonState();
}

class _loginSignInButtonState extends State<loginSignInButton> {
  bool _isSigningIn = false;
  LoginPlatform  _loginPlatform = LoginPlatform.none;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              setState((){
                _isSigningIn = true;
              });

              User? user = await Authentication.signInWithGoogle(context: context);

              onButtonClick("google", user as String);
              setState((){
                _isSigningIn = false;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              minimumSize: Size.fromHeight(50), // 높이만 50으로 설정
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ExtendedImage.asset('assets/imgs/btn_google_light_normal_ldpi.9.png'),
                Text(' google로 계속하기 ',
                  style: TextStyle(color: Colors.black),),
                Opacity(
                  opacity: 0.0,
                  child: ExtendedImage.asset('assets/imgs/btn_google_light_normal_ldpi.9.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: common_padding,),
          ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              minimumSize: Size.fromHeight(50), // 높이만 50으로 설정
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ExtendedImage.asset('assets/imgs/apple_login_1x.png'),
                Text('Apple로 계속하기',
                  style: TextStyle(color: Colors.black),),
                Opacity(
                  opacity: 0.0,
                  child: Image.asset('assets/imgs/apple_login_1x.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: common_padding,),
          ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffFEE500),
              minimumSize: Size.fromHeight(50), // 높이만 50으로 설정
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
            ),
            child:
            ExtendedImage.asset('assets/imgs/kakao_login_medium_wide.png', width: 260,),
          ),
          SizedBox(height: common_padding,),
          ElevatedButton(
            onPressed: () async {
              setState((){
                _isSigningIn = true;
              });

              final NaverLoginResult res = await FlutterNaverLogin.logIn();

              setState((){
                _isSigningIn = true;
                _loginPlatform = LoginPlatform.naver;

              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff03C75A),
              minimumSize: Size.fromHeight(50), // 높이만 50으로 설정
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
            ),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ExtendedImage.asset('assets/imgs/naver_login_icon.png'),
                Text('네이버로 시작하기',
                  style: TextStyle(color: Colors.white),),
                Opacity(
                  opacity: 0.0,
                  child: Image.asset('assets/imgs/naver_login_icon.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


void onButtonClick(String Link, String data) async {

  if(Link == "google"){
    print(data);
  } else if(Link == "apple"){
    print(data);
  } else if(Link == "kakao"){
    kakaoLink();
  } else if(Link == "Naver"){
    print(data);
  } else {

  }
}

void appleLink(){
  logger.d('appleLink');
}

void kakaoLink(){
  logger.d('kakaoLink');
}

void naverLink(){
  logger.d('naverLink');
}
