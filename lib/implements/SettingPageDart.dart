import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recordingmanagement/test/setting/service_info.dart';
import 'package:recordingmanagement/utils/logger.dart';

import '../constants/common_size.dart';
import '../test/setting/notice.dart';
import '../test/setting/private.dart';
import '../test/setting/setting.dart';

class SettingPageDart extends StatelessWidget {
  const SettingPageDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, snapshot) {
      return SafeArea(
        child: Container(
          child: Material(
              child: Padding(
            padding: const EdgeInsets.all(common_padding),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(height: common_padding),
                ListTile(
                  title: const Text('개인정보'),
                  tileColor: Colors.white,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => Setting_Private()));
                  },
                ),
                SizedBox(height: common_padding),
                ListTile(
                  title: const Text('계약 활동 내역'),
                  tileColor: Colors.white,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => Setting_Private()));
                  },
                ),
                SizedBox(height: common_padding),
                ListTile(
                  title: const Text('설정'),
                  tileColor: Colors.white,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => Setting_Setting()));
                  },
                ),
                SizedBox(height: common_padding),
                ListTile(
                  title: const Text('공지사항'),
                  tileColor: Colors.white,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => Setting_Notice()));
                  },
                ),
                SizedBox(height: common_padding),
                ListTile(
                  title: const Text('서비스정보'),
                  tileColor: Colors.white,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => Setting_ServiceInfo()));
                  },
                ),
              ],
            ),
          )),
        ),
      );
    });
  }
}
