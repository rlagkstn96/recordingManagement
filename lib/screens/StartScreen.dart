import 'package:flutter/material.dart';
import 'package:recordingmanagement/utils/logger.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
              onPressed: () {
                Navigator.pop(context);
                logger.d('StartPage');
                //기능구현
              },
              child: Text('StartPage'))
        ],
      ),
    );
  }
}
