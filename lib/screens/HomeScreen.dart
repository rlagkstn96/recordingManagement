import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recordingmanagement/implements/IndexingPageDart.dart';
import 'package:recordingmanagement/implements/LoungePageDart.dart';
import 'package:recordingmanagement/implements/RecordingPageDart.dart';
import 'package:recordingmanagement/implements/SettingPageDart.dart';
import 'package:recordingmanagement/screens/StartScreen.dart';
import 'package:recordingmanagement/utils/logger.dart';
import 'package:recordingmanagement/widgets/expandable_fab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _bottomSelectedIndex,
        children: [
          Container(
            child: IndexingPageDart(),
          ),
          Container(
            child: LoungePageDart(),
          ),
          Container(
            child: RecordingPageDart(),
          ),
          Container(
            child: SettingPageDart(),
          ),
        ],
      ),
      // appBar: AppBar(
      //   centerTitle: false,
      //   title: Text('테스트', style: Theme.of(context).appBarTheme.titleTextStyle),
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
      //     IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.text_justify)),
      //     IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
      //     IconButton(
      //         onPressed: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => StartScreen()));
      //         },
      //         icon: Icon(CupertinoIcons.square_arrow_left)),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black12,
        currentIndex: _bottomSelectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(_bottomSelectedIndex == 0
                  ? 'assets/imgs/home_dark.png'
                  : 'assets/imgs/home.png')),
              label: '홈'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(_bottomSelectedIndex == 0
                  ? 'assets/imgs/placeholder.png'
                  : 'assets/imgs/selected_placeholder.png')),
              label: '라운지 '),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(_bottomSelectedIndex == 0
                  ? 'assets/imgs/chat.png'
                  : 'assets/imgs/chat_selected.png')),
              label: '스페이스'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/imgs/more.png')),
              label: 'MORE'),
        ],
        onTap: (index) {
          setState(() {
            _bottomSelectedIndex = index;
          });
        },
      ),
    );
  }
}
