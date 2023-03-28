import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/common_size.dart';

class SpaceListBoard extends StatelessWidget {
  const SpaceListBoard({Key? key}) : super(key: key);

  final String messages = 'Freeboard';
  final String titleText = '서울특별시 송파구 잠실 5단지 431동 1603호';
  final Null titleText1 = null;
  final String subTitleText = '민법상 ~~';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: common_padding),
            SizedBox(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1),
                    borderRadius: BorderRadius.circular(16)),
                child: SizedBox(
                  height: 150,
                  child: Row(
                    children: [
                      SizedBox(width: common_padding),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleText,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Expanded(
                            child: Center(
                              child: Container(
                                  child: SizedBox(
                                      height: 100,
                                      width: 80,
                                      child: ExtendedImage.network(
                                          'https://picsum.photos/100',
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          shape: BoxShape.rectangle))),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                                child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: Row(
                                    children: [
                                      Text('2023.02.00',
                                          style: TextStyle(color: Colors.grey)),
                                      SizedBox(width: 10),
                                      Text('임대차',
                                          style: TextStyle(color: Colors.grey)),
                                      SizedBox(width: 10),
                                      Text('보안 활성화',
                                          style: TextStyle(color: Colors.grey)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: common_padding),
            SizedBox(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1),
                    borderRadius: BorderRadius.circular(16)),
                child: SizedBox(
                  height: 150,
                  child: Row(
                    children: [
                      SizedBox(width: common_padding),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleText,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Expanded(
                            child: Center(
                              child: Container(
                                  child: SizedBox(
                                      height: 100,
                                      width: 80,
                                      child: ExtendedImage.network(
                                          'https://picsum.photos/100',
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          shape: BoxShape.rectangle))),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                                child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: Row(
                                    children: [
                                      Text('2023.02.00',
                                          style: TextStyle(color: Colors.grey)),
                                      SizedBox(width: 10),
                                      Text('임대차',
                                          style: TextStyle(color: Colors.grey)),
                                      SizedBox(width: 10),
                                      Text('보안 활성화',
                                          style: TextStyle(color: Colors.grey)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: common_padding),
            SizedBox(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1),
                    borderRadius: BorderRadius.circular(16)),
                child: SizedBox(
                  height: 150,
                  child: Row(
                    children: [
                      SizedBox(width: common_padding),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleText,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Expanded(
                            child: Center(
                              child: Container(
                                  child: SizedBox(
                                      height: 100,
                                      width: 80,
                                      child: ExtendedImage.network(
                                          'https://picsum.photos/100',
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          shape: BoxShape.rectangle))),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                                child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: Row(
                                    children: [
                                      Text('2023.02.00',
                                          style: TextStyle(color: Colors.grey)),
                                      SizedBox(width: 10),
                                      Text('임대차',
                                          style: TextStyle(color: Colors.grey)),
                                      SizedBox(width: 10),
                                      Text('보안 활성화',
                                          style: TextStyle(color: Colors.grey)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: common_padding),
            SizedBox(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1),
                    borderRadius: BorderRadius.circular(16)),
                child: SizedBox(
                  height: 150,
                  child: Row(
                    children: [
                      SizedBox(width: common_padding),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleText1==null? '새로운 공간 추가하기':titleText,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Expanded(
                            child: Center(
                              child: Container(
                                  child: SizedBox(
                                      height: 100,
                                      width: 80,
                                      child: Icon(Icons.add_box_outlined, size: 50))),
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
