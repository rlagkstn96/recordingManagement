import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recordingmanagement/constants/common_size.dart';

class FreeBoard extends StatelessWidget {
  const FreeBoard({
    super.key,
  });

  final String messages = 'Freeboard';
  final String titleText = '부동산 임대차 계약';
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
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                          height: 40,
                          width: 50,
                          child: ExtendedImage.network(
                              'https://picsum.photos/100',
                              borderRadius: BorderRadius.circular(12),
                              shape: BoxShape.rectangle)),
                      SizedBox(width: common_small_padding),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleText,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Expanded(
                            child: Container(child: Text(subTitleText)),
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
                                      Text('VIEW 3,024',
                                          style: TextStyle(color: Colors.grey)),
                                      SizedBox(width: 10),
                                      Icon(CupertinoIcons.chat_bubble_2,
                                          color: Colors.grey),
                                      Text('23',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(CupertinoIcons.heart,
                                          color: Colors.grey),
                                      Text('30',
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
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                          height: 40,
                          width: 50,
                          child: ExtendedImage.network(
                              'https://picsum.photos/100',
                              borderRadius: BorderRadius.circular(12),
                              shape: BoxShape.rectangle)),
                      SizedBox(width: common_small_padding),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleText,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Expanded(
                            child: Container(child: Text(subTitleText)),
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
                                      Text('VIEW 3,024',
                                          style: TextStyle(color: Colors.grey)),
                                      SizedBox(width: 10),
                                      Icon(CupertinoIcons.chat_bubble_2,
                                          color: Colors.grey),
                                      Text('23',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(CupertinoIcons.heart,
                                          color: Colors.grey),
                                      Text('30',
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
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                          height: 40,
                          width: 50,
                          child: ExtendedImage.network(
                              'https://picsum.photos/100',
                              borderRadius: BorderRadius.circular(12),
                              shape: BoxShape.rectangle)),
                      SizedBox(width: common_small_padding),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleText,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Expanded(
                            child: Container(child: Text(subTitleText)),
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
                                      Text('VIEW 3,024',
                                          style: TextStyle(color: Colors.grey)),
                                      SizedBox(width: 10),
                                      Icon(CupertinoIcons.chat_bubble_2,
                                          color: Colors.grey),
                                      Text('23',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(CupertinoIcons.heart,
                                          color: Colors.grey),
                                      Text('30',
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
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                          height: 40,
                          width: 50,
                          child: ExtendedImage.network(
                              'https://picsum.photos/100',
                              borderRadius: BorderRadius.circular(12),
                              shape: BoxShape.rectangle)),
                      SizedBox(width: common_small_padding),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleText,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Expanded(
                            child: Container(child: Text(subTitleText)),
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
                                      Text('VIEW 3,024',
                                          style: TextStyle(color: Colors.grey)),
                                      SizedBox(width: 10),
                                      Icon(CupertinoIcons.chat_bubble_2,
                                          color: Colors.grey),
                                      Text('23',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(CupertinoIcons.heart,
                                          color: Colors.grey),
                                      Text('30',
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
          ],
        ),
      ),
    );
  }
}
