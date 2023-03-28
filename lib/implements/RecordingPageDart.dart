import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recordingmanagement/constants/tab_list.dart';
import 'package:recordingmanagement/utils/logger.dart';

import '../constants/common_size.dart';
import '../test/space/floorplancreator.dart';
import '../test/space/test_contractboard_tab.dart';
import '../test/space/test_problemboard_tab.dart';
import '../test/space/test_spaceboard_tab.dart';

class RecordingPageDart extends StatelessWidget {
  const RecordingPageDart ({Key? key}) : super(key: key);
  void _onFloorPlanCreated(List<Offset> points) {
    // Do something with the created floor plan points
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: space_Tab.length,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: AppBarTheme.of(context).backgroundColor,
                  foregroundColor: AppBarTheme.of(context).foregroundColor,
                  title: Text('스페이스'),
                  bottom: TabBar(
                    tabs: space_Tab,
                    labelColor: Colors.black,
                    labelPadding: EdgeInsets.zero,
                  ),
                ),
                body: TabBarView(children: <Widget>[
                  Container(child: SpaceListBoard()),
                  Container(child: ProblemBoard()),
                  Container(child: SpaceContract()),
                  Container(child: FloorPlanCreator(onFloorPlanCreated: _onFloorPlanCreated)),
                ]
                )
            )
        )
    );
  }
}
