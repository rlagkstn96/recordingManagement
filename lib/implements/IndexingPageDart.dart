import 'package:flutter/material.dart';
import 'package:recordingmanagement/constants/common_size.dart';
import 'package:recordingmanagement/utils/logger.dart';

import '../test/lounge/test_adviser_tab.dart';
import '../test/lounge/test_community_tab.dart';
import '../test/lounge/test_freeboard_tab.dart';
import '../test/lounge/test_market_tab.dart';
import '../test/test_login_page.dart';

class IndexingPageDart extends StatelessWidget {
  IndexingPageDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, snapshot) {
      return Container(
        child: SafeArea(
          child: Material(
            child: Padding(
              padding: const EdgeInsets.all(common_padding),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  SizedBox(height: common_padding),
                  ListTile(
                    title: const Text('로그인 페이지 바로가기'),
                    tileColor: Colors.white,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => TestPage()));
                    },
                  ),
                  SizedBox(height: common_padding),
                  ListTile(
                    title: const Text('최근 부동산 이슈'),
                    tileColor: Colors.white,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => FreeBoard()));
                    },
                  ),
                  SizedBox(height: common_padding),
                  ListTile(
                    title: const Text('라운지 인기 게시글'),
                    tileColor: Colors.white,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => CommunityBoard()));
                    },
                  ),
                  SizedBox(height: common_padding),
                  ListTile(
                    title: const Text('부동산 거래 TIP!'),
                    tileColor: Colors.white,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => AdviserBoard()));
                    },
                  ),
                  SizedBox(height: common_padding),
                  ListTile(
                    title: const Text('거래량 많은 물건'),
                    tileColor: Colors.white,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => MarketBoard()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
