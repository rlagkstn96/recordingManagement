import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recordingmanagement/utils/logger.dart';

import '../constants/common_size.dart';
import '../constants/tab_list.dart';
import '../test/lounge/test_adviser_tab.dart';
import '../test/lounge/test_community_tab.dart';
import '../test/lounge/test_freeboard_tab.dart';
import '../test/lounge/test_market_tab.dart';
import '../widgets/expandable_fab.dart';
import 'RecordingPageDart.dart';

class LoungePageDart extends StatelessWidget {
  const LoungePageDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: noticeTab_landlord.length,
      child: Scaffold(
          appBar: AppBar(
            title: Text('임대인 라운지'),
            backgroundColor: AppBarTheme.of(context).backgroundColor,
            foregroundColor: AppBarTheme.of(context).foregroundColor,
            bottom: TabBar(
              tabs: noticeTab_landlord,
              labelColor: Colors.black,
              labelPadding: EdgeInsets.zero,
            ),
          ),
          floatingActionButton: ExpandableFab(
            distance: 90,
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RecordingPageDart()));
                },
                height: 56,
                shape: CircleBorder(),
                color: Theme.of(context).colorScheme.primary,
                child: Icon(Icons.add),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoungePageDart()));
                },
                height: 56,
                shape: CircleBorder(),
                color: Theme.of(context).colorScheme.primary,
                child: Icon(Icons.add),
              ),
            ],
          ),
          body: TabBarView(children: <Widget>[
            Container(child: FreeBoard()),
            Container(child: MarketBoard()),
            Container(child: CommunityBoard()),
            Container(child: AdviserBoard()),
         ])

      ),
    ));
  }
}
