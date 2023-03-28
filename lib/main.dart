import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recordingmanagement/screens/HomeScreen.dart';
import 'package:recordingmanagement/screens/StartScreen.dart';
import 'package:recordingmanagement/splash_screen.dart';

final _router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomeScreen()),
      GoRoute(path: '/auth', builder: (context, state) => StartScreen()),
    ],
    redirect: (context, state) {
      final loggingIn = state.subloc == '/auth';
      bool check = true; // UserLoginState
      if (check) {
        return '/';
      } else {
        return loggingIn ? null : '/auth';
      }
    });

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3), () => 100),
        builder: (context, snapshot) {
          return AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: _splashLoadingWidget(snapshot));
        });
  }

  StatelessWidget _splashLoadingWidget(AsyncSnapshot<int> snapshot) {
    if (snapshot.hasError) {
      return Text('Error');
    } else if (snapshot.hasData) {
      return recordingApp();
    } else {
      return SplashScreen();
    }
  }
}

class recordingApp extends StatelessWidget {
  recordingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'DoHyeon',
        hintColor: Colors.grey[350],
        textTheme: TextTheme(
            button: TextStyle(color: Colors.white),
            subtitle1: TextStyle(color: Colors.black87, fontSize: 15),
            subtitle2: TextStyle(color: Colors.grey, fontSize: 13),
            bodyText2: TextStyle(
                color: Colors.black87, fontWeight: FontWeight.w300)),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            minimumSize: Size(48, 48),
          ),
        ),
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.black87,
          backgroundColor: Colors.white,
          elevation: 2,
          titleTextStyle: TextStyle(color: Colors.black87),
          actionsIconTheme: IconThemeData(color: Colors.black87),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.black54,
        ),
      ),
      routerConfig: _router,
    );
  }
}
