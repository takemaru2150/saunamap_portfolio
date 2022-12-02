import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:googlemap_sample/components/color.dart';
import 'package:googlemap_sample/components/func_foreach.dart';
import 'package:tuple/tuple.dart';

/// サウナ・水風呂タブ　　スタイル
Widget _saunaWaterCard(
  List<Tuple3<String, String, List<String>>> saunaTuple,
  List<Tuple3<String, String, List<String>>> waterTuple,
  List<int> saunaSpecTag,
) {
  return SingleChildScrollView(
    child: Column(
      children: [
        /// ================= サウナスペック表 ======================
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(6),
            ),
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 10.0,
              runSpacing: 8.0,
              children: [
                if (saunaSpecTag[0] == 1) _saunaSpecTag("アウフグース"),
                if (saunaSpecTag[1] == 1) _saunaSpecTag("オートロウリュ"),
                if (saunaSpecTag[2] == 1) _saunaSpecTag("セルフロウリュ"),
                if (saunaSpecTag[3] == 1) _saunaSpecTag("外気浴"),
                if (saunaSpecTag[4] == 1) _saunaSpecTag("サウナチェア"),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ================= サウナ室 ======================
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// 繰り返し
                  for (Tuple4<int, String, String, List> value
                      in saunaTuple.withIndex)
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      alignment: Alignment.center,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  // 'サウナ室 manSaunaList.indexOf(manSaunaValue))',
                                  'サウナ室 ${value.item1 + 1}',
                                  style: TextStyle(
                                    color: tColorSaunaTabSaunaRed,
                                    fontSize: 17.0.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),

                              /// 温度
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 3.0),
                                      child: Text(
                                        '温度',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13.0.sp,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 3.0),
                                      child: Text(
                                        // manSaunaValue,
                                        value.item2,
                                        style: TextStyle(
                                          color: tColorSaunaTabSaunaRed,
                                          fontSize: 36.0.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '度',
                                      style: TextStyle(
                                        color: tColorSaunaTabSaunaRed,
                                        fontSize: 13.0.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              /// 収容人数
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text('収容人数：${value.item3}人',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.0.sp,
                                    )),
                              ),

                              /// サウナタグ
                              for (String tag in value.item4)
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            top: 3,
                                            bottom: 3,
                                            right: 8,
                                            left: 8),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: bColorSaunaTabSaunaTagGray,
                                        ),
                                        child: Text(
                                          tag,
                                          maxLines: 1,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                              fontSize: 9.0.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),

            /// ================= 水風呂 ======================
            Expanded(
              child: Column(
                children: [
                  /// 繰り返し
                  for (Tuple4<int, String, String, List> value
                      in waterTuple.withIndex)
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  '水風呂 ${value.item1 + 1}',
                                  style: TextStyle(
                                    color: tColorSaunaTabWaterBlue,
                                    fontSize: 17.0.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),

                              /// 温度
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 3.0),
                                      child: Text(
                                        '温度',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13.0.sp,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 3.0),
                                      child: Text(
                                        value.item2,
                                        style: TextStyle(
                                          color: tColorSaunaTabWaterBlue,
                                          fontSize: 36.0.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '度',
                                      style: TextStyle(
                                        color: tColorSaunaTabWaterBlue,
                                        fontSize: 13.0.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              /// 収容人数
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text('収容人数：${value.item3}人',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.0.sp,
                                    )),
                              ),

                              /// 水風呂タグ
                              for (String tag in value.item4)
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            top: 3,
                                            bottom: 3,
                                            right: 8,
                                            left: 8),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: bColorSaunaTabSaunaTagGray,
                                        ),
                                        child: Text(
                                          tag,
                                          maxLines: 1,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                              fontSize: 9.0.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
