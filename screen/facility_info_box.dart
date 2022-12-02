import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:googlemap_sample/components/color.dart';
import 'package:googlemap_sample/components/size.dart';
import 'package:googlemap_sample/screen/facility_info.dart';
import 'package:googlemap_sample/view_model/selected_marker.dart';
import 'package:googlemap_sample/view_model/vm_marker.dart';

///ーーーーーーーーーーーー　施設情報Box　ーーーーーーーーーーーーー
class FacilityInfoBox extends StatefulWidget {
  const FacilityInfoBox({Key? key}) : super(key: key);
  @override
  State<FacilityInfoBox> createState() => _FacilityInfoBoxState();
}

class _FacilityInfoBoxState extends State<FacilityInfoBox> {
  // WidgetAを再描画するメソッドを定義
  void rebuildFacilityInfoBox() {
    setState(() {});
  }

  /// ここにはじめに一度だけ実行したいものを書く
  @override
  void initState() {
    super.initState();
    // ViewModel内に、再描画メソッドを渡す
    ViewModelMarker.instance.setRebuildFacilityInfoBox(rebuildFacilityInfoBox);
  }

  @override
  Widget build(BuildContext context) {
    print("_FacilityInfoBox ビルド-完了");

    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    /// flutter_screenutil iPhone14の液晶サイズを基準
    ScreenUtil.init(context, designSize: const Size(390, 844));

    String facilityName = SelectedMarker.instance.facilityName;
    String manSauna1Temp = SelectedMarker.instance.manSauna1Temp;
    String manSauna2Temp = SelectedMarker.instance.manSauna2Temp;
    String manSauna3Temp = SelectedMarker.instance.manSauna3Temp;
    String manSauna4Temp = SelectedMarker.instance.manSauna4Temp;
    String manSauna5Temp = SelectedMarker.instance.manSauna5Temp;
    String manSauna6Temp = SelectedMarker.instance.manSauna6Temp;
    String manSauna7Temp = SelectedMarker.instance.manSauna7Temp;
    String manWater1Temp = SelectedMarker.instance.manWater1Temp;
    String manWater2Temp = SelectedMarker.instance.manWater2Temp;
    String manWater3Temp = SelectedMarker.instance.manWater3Temp;
    String manWater4Temp = SelectedMarker.instance.manWater4Temp;
    String manWater5Temp = SelectedMarker.instance.manWater5Temp;
    String manWater6Temp = SelectedMarker.instance.manWater6Temp;
    String manGaikiyoku = SelectedMarker.instance.manGaikiyoku == 1 ? "○" : "×";
    String womanSauna1Temp = SelectedMarker.instance.womanSauna1Temp;
    String womanSauna2Temp = SelectedMarker.instance.womanSauna2Temp;
    String womanSauna3Temp = SelectedMarker.instance.womanSauna3Temp;
    String womanSauna4Temp = SelectedMarker.instance.womanSauna4Temp;
    String womanSauna5Temp = SelectedMarker.instance.womanSauna5Temp;
    String womanSauna6Temp = SelectedMarker.instance.womanSauna6Temp;
    String womanWater1Temp = SelectedMarker.instance.womanWater1Temp;
    String womanWater2Temp = SelectedMarker.instance.womanWater2Temp;
    String womanWater3Temp = SelectedMarker.instance.womanWater3Temp;
    String womanWater4Temp = SelectedMarker.instance.womanWater4Temp;
    String womanGaikiyoku =
        SelectedMarker.instance.womanGaikiyoku == 1 ? "○" : "×";
    String saunaikitaiImgUrl = SelectedMarker.instance.saunaikitaiImgUrl;

    // サウナ温度　男　最大値
    var manSaunaList = <double>[];
    if (manSauna1Temp != "") {
      manSaunaList.add(double.parse(manSauna1Temp));
    }
    if (manSauna2Temp != "") {
      manSaunaList.add(double.parse(manSauna2Temp));
    }
    if (manSauna3Temp != "") {
      manSaunaList.add(double.parse(manSauna3Temp));
    }
    if (manSauna4Temp != "") {
      manSaunaList.add(double.parse(manSauna4Temp));
    }
    if (manSauna5Temp != "") {
      manSaunaList.add(double.parse(manSauna5Temp));
    }
    if (manSauna6Temp != "") {
      manSaunaList.add(double.parse(manSauna6Temp));
    }
    if (manSauna7Temp != "") {
      manSaunaList.add(double.parse(manSauna7Temp));
    }
    String maxManSaunaTemp =
        manSaunaList.isEmpty ? "" : manSaunaList.reduce(max).round().toString();

    // 水風呂温度　男　最小値
    var manWaterList = <double>[];
    if (manWater1Temp != "") {
      manWaterList.add(double.parse(manWater1Temp));
    }
    if (manWater2Temp != "") {
      manWaterList.add(double.parse(manWater2Temp));
    }
    if (manWater3Temp != "") {
      manWaterList.add(double.parse(manWater3Temp));
    }
    if (manWater4Temp != "") {
      manWaterList.add(double.parse(manWater4Temp));
    }
    if (manWater5Temp != "") {
      manWaterList.add(double.parse(manWater5Temp));
    }
    if (manWater6Temp != "") {
      manWaterList.add(double.parse(manWater6Temp));
    }
    String minManWaterTemp =
        manWaterList.isEmpty ? "" : manWaterList.reduce(min).round().toString();

    // サウナ温度 女　最大値
    var womanSaunaList = <double>[];
    if (womanSauna1Temp != "") {
      womanSaunaList.add(double.parse(womanSauna1Temp));
    }
    if (womanSauna2Temp != "") {
      womanSaunaList.add(double.parse(womanSauna2Temp));
    }
    if (womanSauna3Temp != "") {
      womanSaunaList.add(double.parse(womanSauna3Temp));
    }
    if (womanSauna4Temp != "") {
      womanSaunaList.add(double.parse(womanSauna4Temp));
    }
    if (womanSauna5Temp != "") {
      womanSaunaList.add(double.parse(womanSauna5Temp));
    }
    if (womanSauna6Temp != "") {
      womanSaunaList.add(double.parse(womanSauna6Temp));
    }
    String maxWomanSaunaTemp = womanSaunaList.isEmpty
        ? ""
        : womanSaunaList.reduce(max).round().toString();

    // 水風呂温度　女　最小値
    var womanWaterList = <double>[];
    if (womanWater1Temp != "") {
      womanWaterList.add(double.parse(womanWater1Temp));
    }
    if (womanWater2Temp != "") {
      womanWaterList.add(double.parse(womanWater2Temp));
    }
    if (womanWater3Temp != "") {
      womanWaterList.add(double.parse(womanWater3Temp));
    }
    if (womanWater4Temp != "") {
      womanWaterList.add(double.parse(womanWater4Temp));
    }
    String minWomanWaterTemp = womanWaterList.isEmpty
        ? ""
        : womanWaterList.reduce(min).round().toString();

    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return const FacilityInfo();
            },
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const Offset begin = Offset(0.0, 1.0); // 下から上
              const Offset end = Offset.zero;
              final Animatable<Offset> tween = Tween(begin: begin, end: end)
                  .chain(CurveTween(curve: Curves.easeInOut));
              final Animation<Offset> offsetAnimation = animation.drive(tween);
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
          ),
        );
      },
      child: Container(
        height: 185.h,
        width: deviceWidth,
        padding: const EdgeInsets.only(
            top: 20.0, right: 5.0, left: 5.0, bottom: 30.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment(1.0, -1.5),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.expand_less),
              ),
            ),
            Row(
              // 写真と施設情報BOXとの横幅
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 140.w,
                    height: 110.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(
                        saunaikitaiImgUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (c, o, s) {
                          /// print('Load failed : ${c.toString()}');
                          return Image.asset('assets/images/noImage.png');
                        },
                        // ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 210.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          facilityName,
                          style: TextStyle(
                            fontSize: 17.0.sp,
                            color: tColorFIBFacilityNameBlack,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -.3,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 11.0),
                                    child: Container(
                                      width: 24.w,
                                      height: 24.w,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: dColorFIBManIconBlue,
                                      ),
                                      child: Text(
                                        "男",
                                        style: TextStyle(
                                            fontSize: 14.0.sp,
                                            color: tColorFIBIconWhite),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Container(
                                      width: 24.w,
                                      height: 24.w,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: dColorFIBIconGrey,
                                      ),
                                      child: Text(
                                        "サ",
                                        style: TextStyle(
                                            fontSize: 14.0.sp,
                                            color: tColorFIBIconBlack),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 11.0),
                                    child: SizedBox(
                                      width: wSizeFIBSaunaText,
                                      child: Text(
                                        maxManSaunaTemp,
                                        style: TextStyle(
                                            fontSize: 14.0.sp,
                                            color: tColorFIBIconBlack),
                                        maxLines: 1,
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Container(
                                      width: 24.w,
                                      height: 24.w,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: dColorFIBIconGrey,
                                      ),
                                      child: Text(
                                        "水",
                                        style: TextStyle(
                                            fontSize: 14.0.sp,
                                            color: tColorFIBIconBlack),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 11.0),
                                    child: SizedBox(
                                      width: wSizeFIBWaterText,
                                      child: Text(
                                        minManWaterTemp,
                                        style: TextStyle(
                                            fontSize: 14.0.sp,
                                            color: tColorFIBIconBlack),
                                        maxLines: 1,
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Container(
                                      width: 24.w,
                                      height: 24.w,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: dColorFIBIconGrey,
                                      ),
                                      child: Text(
                                        "外",
                                        style: TextStyle(
                                            fontSize: 14.0.sp,
                                            color: tColorFIBIconBlack),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    manGaikiyoku,
                                    style: TextStyle(
                                        fontSize: 14.0.sp,
                                        color: tColorFIBIconBlack),
                                  ),
                                ],
                              ),
                            ),
                            // 女　サウナ　水風呂　外気浴
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 11.0),
                                  child: Container(
                                    width: 24.w,
                                    height: 24.w,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: dColorFIBWomanIconRed,
                                    ),
                                    child: Text(
                                      "女",
                                      style: TextStyle(
                                          fontSize: 14.0.sp,
                                          color: tColorFIBIconWhite),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: Container(
                                    width: 24.w,
                                    height: 24.w,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: dColorFIBIconGrey,
                                    ),
                                    child: Text(
                                      "サ",
                                      style: TextStyle(
                                          fontSize: 14.0.sp,
                                          color: tColorFIBIconBlack),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 11.0),
                                  child: SizedBox(
                                    width: wSizeFIBSaunaText,
                                    child: Text(
                                      maxWomanSaunaTemp,
                                      style: TextStyle(
                                          fontSize: 14.0.sp,
                                          color: tColorFIBIconBlack),
                                      maxLines: 1,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: Container(
                                    width: 24.w,
                                    height: 24.w,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: dColorFIBIconGrey,
                                    ),
                                    child: Text(
                                      "水",
                                      style: TextStyle(
                                          fontSize: 14.0.sp,
                                          color: tColorFIBIconBlack),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 11.0),
                                  child: SizedBox(
                                    width: wSizeFIBWaterText,
                                    child: Text(
                                      minWomanWaterTemp,
                                      style: TextStyle(
                                          fontSize: 14.0.sp,
                                          color: tColorFIBIconBlack),
                                      maxLines: 1,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: Container(
                                    width: 24.w,
                                    height: 24.w,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: dColorFIBIconGrey,
                                    ),
                                    child: Text(
                                      "外",
                                      style: TextStyle(
                                          fontSize: 14.0.sp,
                                          color: tColorFIBIconBlack),
                                    ),
                                  ),
                                ),
                                Text(
                                  womanGaikiyoku,
                                  style: TextStyle(
                                      fontSize: 14.0.sp,
                                      color: tColorFIBIconBlack),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
