import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:googlemap_sample/components/InnerTabController.dart';
import 'package:googlemap_sample/components/color.dart';
import 'package:googlemap_sample/components/widget_map_dialog.dart';
import 'package:googlemap_sample/view_model/selected_marker.dart';
import 'package:tuple/tuple.dart';

class FacilityInfo extends StatefulWidget {
  const FacilityInfo({Key? key}) : super(key: key);

  @override
  State<FacilityInfo> createState() => _FacilityInfoState();
}

class _FacilityInfoState extends State<FacilityInfo> {
  bool isChangedFavoriteIcon = false;

  int id = SelectedMarker.instance.id;
  double lat = SelectedMarker.instance.lat;
  double lng = SelectedMarker.instance.lng;
  String facilityName = SelectedMarker.instance.facilityName;
  String facilityType = SelectedMarker.instance.facilityType;
  String saunaikitaiUrl = SelectedMarker.instance.saunaikitaiUrl;
  String address = SelectedMarker.instance.address;
  String parking = SelectedMarker.instance.parking;
  String tel = SelectedMarker.instance.tel;
  String hpUrl = SelectedMarker.instance.hpUrl;
  String regularHoliday = SelectedMarker.instance.regularHoliday;
  String businessHours = SelectedMarker.instance.businessHours;
  String price = SelectedMarker.instance.price;
  String target = SelectedMarker.instance.target;
  int saunaikitaiCounter = SelectedMarker.instance.saunaikitaiCounter;

  // サウナ・水風呂
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
  int manAufguss = SelectedMarker.instance.manAufguss;
  int manAutoloyly = SelectedMarker.instance.manAutoloyly;
  int manSelfloyly = SelectedMarker.instance.manSelfloyly;
  int manGaikiyoku = SelectedMarker.instance.manGaikiyoku;
  int manChair = SelectedMarker.instance.manChair;

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
  int womanAufguss = SelectedMarker.instance.womanAufguss;
  int womanAutoloyly = SelectedMarker.instance.womanAutoloyly;
  int womanSelfloyly = SelectedMarker.instance.womanSelfloyly;
  int womanGaikiyoku = SelectedMarker.instance.womanGaikiyoku;
  int womanChair = SelectedMarker.instance.womanChair;

  String unisexSauna1Temp = SelectedMarker.instance.unisexSauna1Temp;
  String unisexSauna2Temp = SelectedMarker.instance.unisexSauna2Temp;
  String unisexSauna3Temp = SelectedMarker.instance.unisexSauna3Temp;
  String unisexSauna4Temp = SelectedMarker.instance.unisexSauna4Temp;
  String unisexSauna5Temp = SelectedMarker.instance.unisexSauna5Temp;
  String unisexSauna6Temp = SelectedMarker.instance.unisexSauna6Temp;
  String unisexWater1Temp = SelectedMarker.instance.unisexWater1Temp;
  String unisexWater2Temp = SelectedMarker.instance.unisexWater2Temp;
  String unisexWater3Temp = SelectedMarker.instance.unisexWater3Temp;
  String unisexWater4Temp = SelectedMarker.instance.unisexWater4Temp;
  int unisexAufguss = SelectedMarker.instance.unisexAufguss;
  int unisexAutoloyly = SelectedMarker.instance.unisexAutoloyly;
  int unisexSelfloyly = SelectedMarker.instance.unisexSelfloyly;
  int unisexGaikiyoku = SelectedMarker.instance.unisexGaikiyoku;
  int unisexChair = SelectedMarker.instance.unisexChair;

  // 収容人数
  String manSauna1Capacity = SelectedMarker.instance.manSauna1Capacity;
  String manSauna2Capacity = SelectedMarker.instance.manSauna2Capacity;
  String manSauna3Capacity = SelectedMarker.instance.manSauna3Capacity;
  String manSauna4Capacity = SelectedMarker.instance.manSauna4Capacity;
  String manSauna5Capacity = SelectedMarker.instance.manSauna5Capacity;
  String manSauna6Capacity = SelectedMarker.instance.manSauna6Capacity;
  String manSauna7Capacity = SelectedMarker.instance.manSauna7Capacity;
  String manWater1Capacity = SelectedMarker.instance.manWater1Capacity;
  String manWater2Capacity = SelectedMarker.instance.manWater2Capacity;
  String manWater3Capacity = SelectedMarker.instance.manWater3Capacity;
  String manWater4Capacity = SelectedMarker.instance.manWater4Capacity;
  String manWater5Capacity = SelectedMarker.instance.manWater5Capacity;
  String manWater6Capacity = SelectedMarker.instance.manWater6Capacity;
  String womanSauna1Capacity = SelectedMarker.instance.womanSauna1Capacity;
  String womanSauna2Capacity = SelectedMarker.instance.womanSauna2Capacity;
  String womanSauna3Capacity = SelectedMarker.instance.womanSauna3Capacity;
  String womanSauna4Capacity = SelectedMarker.instance.womanSauna4Capacity;
  String womanSauna5Capacity = SelectedMarker.instance.womanSauna5Capacity;
  String womanSauna6Capacity = SelectedMarker.instance.womanSauna6Capacity;
  String womanWater1Capacity = SelectedMarker.instance.womanWater1Capacity;
  String womanWater2Capacity = SelectedMarker.instance.womanWater2Capacity;
  String womanWater3Capacity = SelectedMarker.instance.womanWater3Capacity;
  String womanWater4Capacity = SelectedMarker.instance.womanWater4Capacity;
  String unisexSauna1Capacity = SelectedMarker.instance.unisexSauna1Capacity;
  String unisexSauna2Capacity = SelectedMarker.instance.unisexSauna2Capacity;
  String unisexSauna3Capacity = SelectedMarker.instance.unisexSauna3Capacity;
  String unisexSauna4Capacity = SelectedMarker.instance.unisexSauna4Capacity;
  String unisexSauna5Capacity = SelectedMarker.instance.unisexSauna5Capacity;
  String unisexSauna6Capacity = SelectedMarker.instance.unisexSauna6Capacity;
  String unisexWater1Capacity = SelectedMarker.instance.unisexWater1Capacity;
  String unisexWater2Capacity = SelectedMarker.instance.unisexWater2Capacity;
  String unisexWater3Capacity = SelectedMarker.instance.unisexWater3Capacity;
  String unisexWater4Capacity = SelectedMarker.instance.unisexWater4Capacity;

  String saunaikitaiImgUrl = SelectedMarker.instance.saunaikitaiImgUrl;

  // サウナ水風呂タグ
  String manSauna1Tag1 = SelectedMarker.instance.manSauna1Tag1;
  String manSauna1Tag2 = SelectedMarker.instance.manSauna1Tag2;
  String manSauna1Tag3 = SelectedMarker.instance.manSauna1Tag3;
  String manSauna1Tag4 = SelectedMarker.instance.manSauna1Tag4;
  String manSauna1Tag5 = SelectedMarker.instance.manSauna1Tag5;
  String manSauna2Tag1 = SelectedMarker.instance.manSauna2Tag1;
  String manSauna2Tag2 = SelectedMarker.instance.manSauna2Tag2;
  String manSauna2Tag3 = SelectedMarker.instance.manSauna2Tag3;
  String manSauna2Tag4 = SelectedMarker.instance.manSauna2Tag4;
  String manSauna2Tag5 = SelectedMarker.instance.manSauna2Tag5;
  String manSauna3Tag1 = SelectedMarker.instance.manSauna3Tag1;
  String manSauna3Tag2 = SelectedMarker.instance.manSauna3Tag2;
  String manSauna3Tag3 = SelectedMarker.instance.manSauna3Tag3;
  String manSauna3Tag4 = SelectedMarker.instance.manSauna3Tag4;
  String manSauna3Tag5 = SelectedMarker.instance.manSauna3Tag5;
  String manSauna4Tag1 = SelectedMarker.instance.manSauna4Tag1;
  String manSauna4Tag2 = SelectedMarker.instance.manSauna4Tag2;
  String manSauna4Tag3 = SelectedMarker.instance.manSauna4Tag3;
  String manSauna4Tag4 = SelectedMarker.instance.manSauna4Tag4;
  String manSauna4Tag5 = SelectedMarker.instance.manSauna4Tag5;
  String manSauna5Tag1 = SelectedMarker.instance.manSauna5Tag1;
  String manSauna5Tag2 = SelectedMarker.instance.manSauna5Tag2;
  String manSauna5Tag3 = SelectedMarker.instance.manSauna5Tag3;
  String manSauna5Tag4 = SelectedMarker.instance.manSauna5Tag4;
  String manSauna5Tag5 = SelectedMarker.instance.manSauna5Tag5;
  String manSauna6Tag1 = SelectedMarker.instance.manSauna6Tag1;
  String manSauna6Tag2 = SelectedMarker.instance.manSauna6Tag2;
  String manSauna6Tag3 = SelectedMarker.instance.manSauna6Tag3;
  String manSauna6Tag4 = SelectedMarker.instance.manSauna6Tag4;
  String manSauna6Tag5 = SelectedMarker.instance.manSauna6Tag5;
  String manSauna7Tag1 = SelectedMarker.instance.manSauna7Tag1;
  String manSauna7Tag2 = SelectedMarker.instance.manSauna7Tag2;
  String manSauna7Tag3 = SelectedMarker.instance.manSauna7Tag3;
  String manSauna7Tag4 = SelectedMarker.instance.manSauna7Tag4;
  String manWater1Tag1 = SelectedMarker.instance.manWater1Tag1;
  String manWater1Tag2 = SelectedMarker.instance.manWater1Tag2;
  String manWater2Tag1 = SelectedMarker.instance.manWater2Tag1;
  String manWater2Tag2 = SelectedMarker.instance.manWater2Tag2;
  String manWater3Tag1 = SelectedMarker.instance.manWater3Tag1;
  String manWater3Tag2 = SelectedMarker.instance.manWater3Tag2;
  String manWater4Tag1 = SelectedMarker.instance.manWater4Tag1;
  String manWater4Tag2 = SelectedMarker.instance.manWater4Tag2;
  String manWater5Tag1 = SelectedMarker.instance.manWater5Tag1;
  String manWater5Tag2 = SelectedMarker.instance.manWater5Tag2;
  String manWater6Tag1 = SelectedMarker.instance.manWater6Tag1;
  String womanSauna1Tag1 = SelectedMarker.instance.womanSauna1Tag1;
  String womanSauna1Tag2 = SelectedMarker.instance.womanSauna1Tag2;
  String womanSauna1Tag3 = SelectedMarker.instance.womanSauna1Tag3;
  String womanSauna1Tag4 = SelectedMarker.instance.womanSauna1Tag4;
  String womanSauna1Tag5 = SelectedMarker.instance.womanSauna1Tag5;
  String womanSauna2Tag1 = SelectedMarker.instance.womanSauna2Tag1;
  String womanSauna2Tag2 = SelectedMarker.instance.womanSauna2Tag2;
  String womanSauna2Tag3 = SelectedMarker.instance.womanSauna2Tag3;
  String womanSauna2Tag4 = SelectedMarker.instance.womanSauna2Tag4;
  String womanSauna2Tag5 = SelectedMarker.instance.womanSauna2Tag5;
  String womanSauna3Tag1 = SelectedMarker.instance.womanSauna3Tag1;
  String womanSauna3Tag2 = SelectedMarker.instance.womanSauna3Tag2;
  String womanSauna3Tag3 = SelectedMarker.instance.womanSauna3Tag3;
  String womanSauna3Tag4 = SelectedMarker.instance.womanSauna3Tag4;
  String womanSauna3Tag5 = SelectedMarker.instance.womanSauna3Tag5;
  String womanSauna4Tag1 = SelectedMarker.instance.womanSauna4Tag1;
  String womanSauna4Tag2 = SelectedMarker.instance.womanSauna4Tag2;
  String womanSauna4Tag3 = SelectedMarker.instance.womanSauna4Tag3;
  String womanSauna4Tag4 = SelectedMarker.instance.womanSauna4Tag4;
  String womanSauna5Tag1 = SelectedMarker.instance.womanSauna5Tag1;
  String womanSauna5Tag2 = SelectedMarker.instance.womanSauna5Tag2;
  String womanSauna5Tag3 = SelectedMarker.instance.womanSauna5Tag3;
  String womanSauna5Tag4 = SelectedMarker.instance.womanSauna5Tag4;
  String womanSauna6Tag1 = SelectedMarker.instance.womanSauna6Tag1;
  String womanSauna6Tag2 = SelectedMarker.instance.womanSauna6Tag2;
  String womanWater1Tag1 = SelectedMarker.instance.womanWater1Tag1;
  String womanWater1Tag2 = SelectedMarker.instance.womanWater1Tag2;
  String womanWater2Tag1 = SelectedMarker.instance.womanWater2Tag1;
  String womanWater2Tag2 = SelectedMarker.instance.womanWater2Tag2;
  String womanWater3Tag1 = SelectedMarker.instance.womanWater3Tag1;
  String womanWater3Tag2 = SelectedMarker.instance.womanWater3Tag2;
  String womanWater4Tag1 = SelectedMarker.instance.womanWater4Tag1;
  String unisexSauna1Tag1 = SelectedMarker.instance.unisexSauna1Tag1;
  String unisexSauna1Tag2 = SelectedMarker.instance.unisexSauna1Tag2;
  String unisexSauna1Tag3 = SelectedMarker.instance.unisexSauna1Tag3;
  String unisexSauna1Tag4 = SelectedMarker.instance.unisexSauna1Tag4;
  String unisexSauna1Tag5 = SelectedMarker.instance.unisexSauna1Tag5;
  String unisexSauna2Tag1 = SelectedMarker.instance.unisexSauna2Tag1;
  String unisexSauna2Tag2 = SelectedMarker.instance.unisexSauna2Tag2;
  String unisexSauna2Tag3 = SelectedMarker.instance.unisexSauna2Tag3;
  String unisexSauna2Tag4 = SelectedMarker.instance.unisexSauna2Tag4;
  String unisexSauna2Tag5 = SelectedMarker.instance.unisexSauna2Tag5;
  String unisexSauna3Tag1 = SelectedMarker.instance.unisexSauna3Tag1;
  String unisexSauna3Tag2 = SelectedMarker.instance.unisexSauna3Tag2;
  String unisexSauna3Tag3 = SelectedMarker.instance.unisexSauna3Tag3;
  String unisexSauna3Tag4 = SelectedMarker.instance.unisexSauna3Tag4;
  String unisexSauna3Tag5 = SelectedMarker.instance.unisexSauna3Tag5;
  String unisexSauna4Tag1 = SelectedMarker.instance.unisexSauna4Tag1;
  String unisexSauna4Tag2 = SelectedMarker.instance.unisexSauna4Tag2;
  String unisexSauna4Tag3 = SelectedMarker.instance.unisexSauna4Tag3;
  String unisexSauna4Tag4 = SelectedMarker.instance.unisexSauna4Tag4;
  String unisexSauna4Tag5 = SelectedMarker.instance.unisexSauna4Tag5;
  String unisexSauna5Tag1 = SelectedMarker.instance.unisexSauna5Tag1;
  String unisexSauna5Tag2 = SelectedMarker.instance.unisexSauna5Tag2;
  String unisexSauna5Tag3 = SelectedMarker.instance.unisexSauna5Tag3;
  String unisexSauna5Tag4 = SelectedMarker.instance.unisexSauna5Tag4;
  String unisexSauna5Tag5 = SelectedMarker.instance.unisexSauna5Tag5;
  String unisexSauna6Tag1 = SelectedMarker.instance.unisexSauna6Tag1;
  String unisexSauna6Tag2 = SelectedMarker.instance.unisexSauna6Tag2;
  String unisexSauna6Tag3 = SelectedMarker.instance.unisexSauna6Tag3;
  String unisexSauna6Tag4 = SelectedMarker.instance.unisexSauna6Tag4;
  String unisexSauna6Tag5 = SelectedMarker.instance.unisexSauna6Tag5;
  String unisexWater1Tag1 = SelectedMarker.instance.unisexWater1Tag1;
  String unisexWater1Tag2 = SelectedMarker.instance.unisexWater1Tag2;
  String unisexWater2Tag1 = SelectedMarker.instance.unisexWater2Tag1;
  String unisexWater2Tag2 = SelectedMarker.instance.unisexWater2Tag2;
  String unisexWater3Tag1 = SelectedMarker.instance.unisexWater3Tag1;
  String unisexWater3Tag2 = SelectedMarker.instance.unisexWater3Tag2;
  String unisexWater4Tag1 = SelectedMarker.instance.unisexWater4Tag1;

  @override
  Widget build(BuildContext context) {
    print("_FacilityInfo ビルド-完了");

    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    /// flutter_screenutil iPhone14の液晶サイズを基準
    ScreenUtil.init(context, designSize: const Size(390, 844));

    final manSaunaList = <Tuple3<String, String, List<String>>>[];
    final manWaterList = <Tuple3<String, String, List<String>>>[];
    final womanSaunaList = <Tuple3<String, String, List<String>>>[];
    final womanWaterList = <Tuple3<String, String, List<String>>>[];
    final unisexSaunaList = <Tuple3<String, String, List<String>>>[];
    final unisexWaterList = <Tuple3<String, String, List<String>>>[];
    final manSaunaSpecList = <int>[];
    final womanSaunaSpecList = <int>[];
    final unisexSaunaSpecList = <int>[];
    final manSaunaTagList = [
      [
        manSauna1Tag1,
        manSauna1Tag2,
        manSauna1Tag3,
        manSauna1Tag4,
        manSauna1Tag5
      ],
      [
        manSauna2Tag1,
        manSauna2Tag2,
        manSauna2Tag3,
        manSauna2Tag4,
        manSauna2Tag5
      ],
      [
        manSauna3Tag1,
        manSauna3Tag2,
        manSauna3Tag3,
        manSauna3Tag4,
        manSauna3Tag5
      ],
      [
        manSauna4Tag1,
        manSauna4Tag2,
        manSauna4Tag3,
        manSauna4Tag4,
        manSauna4Tag5
      ],
      [
        manSauna5Tag1,
        manSauna5Tag2,
        manSauna5Tag3,
        manSauna5Tag4,
        manSauna5Tag5
      ],
      [
        manSauna6Tag1,
        manSauna6Tag2,
        manSauna6Tag3,
        manSauna6Tag4,
        manSauna6Tag5
      ],
      [manSauna7Tag1, manSauna7Tag2, manSauna7Tag3, manSauna7Tag4]
    ];
    final manWaterTagList = [
      [
        manWater1Tag1,
        manWater1Tag2,
      ],
      [
        manWater2Tag1,
        manWater2Tag2,
      ],
      [
        manWater3Tag1,
        manWater3Tag2,
      ],
      [
        manWater4Tag1,
        manWater4Tag2,
      ],
      [manWater5Tag1, manWater5Tag2],
      [manWater6Tag1]
    ];
    final womanSaunaTagList = [
      [
        womanSauna1Tag1,
        womanSauna1Tag2,
        womanSauna1Tag3,
        womanSauna1Tag4,
        womanSauna1Tag5
      ],
      [
        womanSauna2Tag1,
        womanSauna2Tag2,
        womanSauna2Tag3,
        womanSauna2Tag4,
        womanSauna2Tag5
      ],
      [
        womanSauna3Tag1,
        womanSauna3Tag2,
        womanSauna3Tag3,
        womanSauna3Tag4,
        womanSauna3Tag5
      ],
      [
        womanSauna4Tag1,
        womanSauna4Tag2,
        womanSauna4Tag3,
        womanSauna4Tag4,
      ],
      [
        womanSauna5Tag1,
        womanSauna5Tag2,
        womanSauna5Tag3,
        womanSauna5Tag4,
      ],
      [
        womanSauna6Tag1,
        womanSauna6Tag2,
      ],
    ];
    final womanWaterTagList = [
      [
        womanWater1Tag1,
        womanWater1Tag2,
      ],
      [
        womanWater2Tag1,
        womanWater2Tag2,
      ],
      [
        womanWater3Tag1,
        womanWater3Tag2,
      ],
      [
        womanWater4Tag1,
      ],
    ];
    final unisexSaunaTagList = [
      [
        unisexSauna1Tag1,
        unisexSauna1Tag2,
        unisexSauna1Tag3,
        unisexSauna1Tag4,
        unisexSauna1Tag5
      ],
      [
        unisexSauna2Tag1,
        unisexSauna2Tag2,
        unisexSauna2Tag3,
        unisexSauna2Tag4,
        unisexSauna2Tag5
      ],
      [
        unisexSauna3Tag1,
        unisexSauna3Tag2,
        unisexSauna3Tag3,
        unisexSauna3Tag4,
        unisexSauna3Tag5
      ],
      [
        unisexSauna4Tag1,
        unisexSauna4Tag2,
        unisexSauna4Tag3,
        unisexSauna4Tag4,
        unisexSauna4Tag5
      ],
      [
        unisexSauna5Tag1,
        unisexSauna5Tag2,
        unisexSauna5Tag3,
        unisexSauna5Tag4,
        unisexSauna5Tag5
      ],
      [
        unisexSauna6Tag1,
        unisexSauna6Tag2,
        unisexSauna6Tag3,
        unisexSauna6Tag4,
        unisexSauna6Tag5
      ],
    ];
    final unisexWaterTagList = [
      [
        unisexWater1Tag1,
        unisexWater1Tag2,
      ],
      [
        unisexWater2Tag1,
        unisexWater2Tag2,
      ],
      [
        unisexWater3Tag1,
        unisexWater3Tag2,
      ],
      [
        unisexWater4Tag1,
      ],
    ];
    for (var value in manSaunaTagList) {
      value.removeWhere((element) => element.isEmpty);
    }
    for (var value in manWaterTagList) {
      value.removeWhere((element) => element.isEmpty);
    }
    for (var value in womanSaunaTagList) {
      value.removeWhere((element) => element.isEmpty);
    }
    for (var value in womanWaterTagList) {
      value.removeWhere((element) => element.isEmpty);
    }
    for (var value in unisexSaunaTagList) {
      value.removeWhere((element) => element.isEmpty);
    }
    for (var value in unisexWaterTagList) {
      value.removeWhere((element) => element.isEmpty);
    }

    /// サウナ・水風呂リスト作成　Tuple（サウナ温度、サウナ収容人数、サウナタグ）
    final manSauna1Tuple = Tuple3<String, String, List<String>>(
        manSauna1Temp, manSauna1Capacity, manSaunaTagList[0]);
    final manSauna2Tuple = Tuple3<String, String, List<String>>(
        manSauna2Temp, manSauna2Capacity, manSaunaTagList[1]);
    final manSauna3Tuple = Tuple3<String, String, List<String>>(
        manSauna3Temp, manSauna3Capacity, manSaunaTagList[2]);
    final manSauna4Tuple = Tuple3<String, String, List<String>>(
        manSauna4Temp, manSauna4Capacity, manSaunaTagList[3]);
    final manSauna5Tuple = Tuple3<String, String, List<String>>(
        manSauna5Temp, manSauna5Capacity, manSaunaTagList[4]);
    final manSauna6Tuple = Tuple3<String, String, List<String>>(
        manSauna6Temp, manSauna6Capacity, manSaunaTagList[5]);
    final manSauna7Tuple = Tuple3<String, String, List<String>>(
        manSauna7Temp, manSauna7Capacity, manSaunaTagList[6]);
    manSaunaList.add(manSauna1Tuple);
    manSaunaList.add(manSauna2Tuple);
    manSaunaList.add(manSauna3Tuple);
    manSaunaList.add(manSauna4Tuple);
    manSaunaList.add(manSauna5Tuple);
    manSaunaList.add(manSauna6Tuple);
    manSaunaList.add(manSauna7Tuple);
    manSaunaList.removeWhere((Tuple3 value) => value.item1.isEmpty);

    final manWater1Tuple = Tuple3<String, String, List<String>>(
        manWater1Temp, manWater1Capacity, manWaterTagList[0]);
    final manWater2Tuple = Tuple3<String, String, List<String>>(
        manWater2Temp, manWater2Capacity, manWaterTagList[1]);
    final manWater3Tuple = Tuple3<String, String, List<String>>(
        manWater3Temp, manWater3Capacity, manWaterTagList[2]);
    final manWater4Tuple = Tuple3<String, String, List<String>>(
        manWater4Temp, manWater4Capacity, manWaterTagList[3]);
    final manWater5Tuple = Tuple3<String, String, List<String>>(
        manWater5Temp, manWater5Capacity, manWaterTagList[4]);
    final manWater6Tuple = Tuple3<String, String, List<String>>(
        manWater6Temp, manWater6Capacity, manWaterTagList[5]);
    manWaterList.add(manWater1Tuple);
    manWaterList.add(manWater2Tuple);
    manWaterList.add(manWater3Tuple);
    manWaterList.add(manWater4Tuple);
    manWaterList.add(manWater5Tuple);
    manWaterList.add(manWater6Tuple);
    manWaterList.removeWhere((Tuple3 value) => value.item1.isEmpty);

    final womanSauna1Tuple = Tuple3<String, String, List<String>>(
        womanSauna1Temp, womanSauna1Capacity, womanSaunaTagList[0]);
    final womanSauna2Tuple = Tuple3<String, String, List<String>>(
        womanSauna2Temp, womanSauna2Capacity, womanSaunaTagList[1]);
    final womanSauna3Tuple = Tuple3<String, String, List<String>>(
        womanSauna3Temp, womanSauna3Capacity, womanSaunaTagList[2]);
    final womanSauna4Tuple = Tuple3<String, String, List<String>>(
        womanSauna4Temp, womanSauna4Capacity, womanSaunaTagList[3]);
    final womanSauna5Tuple = Tuple3<String, String, List<String>>(
        womanSauna5Temp, womanSauna5Capacity, womanSaunaTagList[4]);
    final womanSauna6Tuple = Tuple3<String, String, List<String>>(
        womanSauna6Temp, womanSauna6Capacity, womanSaunaTagList[5]);
    womanSaunaList.add(womanSauna1Tuple);
    womanSaunaList.add(womanSauna2Tuple);
    womanSaunaList.add(womanSauna3Tuple);
    womanSaunaList.add(womanSauna4Tuple);
    womanSaunaList.add(womanSauna5Tuple);
    womanSaunaList.add(womanSauna6Tuple);
    womanSaunaList.removeWhere((Tuple3 value) => value.item1.isEmpty);

    final womanWater1Tuple = Tuple3<String, String, List<String>>(
        womanWater1Temp, womanWater1Capacity, womanWaterTagList[0]);
    final womanWater2Tuple = Tuple3<String, String, List<String>>(
        womanWater2Temp, womanWater2Capacity, womanWaterTagList[1]);
    final womanWater3Tuple = Tuple3<String, String, List<String>>(
        womanWater3Temp, womanWater3Capacity, womanWaterTagList[2]);
    final womanWater4Tuple = Tuple3<String, String, List<String>>(
        womanWater4Temp, womanWater4Capacity, womanWaterTagList[3]);
    final womanWater5Tuple = womanWaterList.add(womanWater1Tuple);
    womanWaterList.add(womanWater2Tuple);
    womanWaterList.add(womanWater3Tuple);
    womanWaterList.add(womanWater4Tuple);
    womanWaterList.removeWhere((Tuple3 value) => value.item1.isEmpty);

    final unisexSauna1Tuple = Tuple3<String, String, List<String>>(
        unisexSauna1Temp, unisexSauna1Capacity, unisexSaunaTagList[0]);
    final unisexSauna2Tuple = Tuple3<String, String, List<String>>(
        unisexSauna2Temp, unisexSauna2Capacity, unisexSaunaTagList[1]);
    final unisexSauna3Tuple = Tuple3<String, String, List<String>>(
        unisexSauna3Temp, unisexSauna3Capacity, unisexSaunaTagList[2]);
    final unisexSauna4Tuple = Tuple3<String, String, List<String>>(
        unisexSauna4Temp, unisexSauna4Capacity, unisexSaunaTagList[3]);
    final unisexSauna5Tuple = Tuple3<String, String, List<String>>(
        unisexSauna5Temp, unisexSauna5Capacity, unisexSaunaTagList[4]);
    final unisexSauna6Tuple = Tuple3<String, String, List<String>>(
        unisexSauna6Temp, unisexSauna6Capacity, unisexSaunaTagList[5]);
    unisexSaunaList.add(unisexSauna1Tuple);
    unisexSaunaList.add(unisexSauna2Tuple);
    unisexSaunaList.add(unisexSauna3Tuple);
    unisexSaunaList.add(unisexSauna4Tuple);
    unisexSaunaList.add(unisexSauna5Tuple);
    unisexSaunaList.add(unisexSauna6Tuple);
    unisexSaunaList.removeWhere((Tuple3 value) => value.item1.isEmpty);

    final unisexWater1Tuple = Tuple3<String, String, List<String>>(
        unisexWater1Temp, unisexWater1Capacity, unisexWaterTagList[0]);
    final unisexWater2Tuple = Tuple3<String, String, List<String>>(
        unisexWater2Temp, unisexWater2Capacity, unisexWaterTagList[1]);
    final unisexWater3Tuple = Tuple3<String, String, List<String>>(
        unisexWater3Temp, unisexWater3Capacity, unisexWaterTagList[2]);
    final unisexWater4Tuple = Tuple3<String, String, List<String>>(
        unisexWater4Temp, unisexWater4Capacity, unisexWaterTagList[3]);
    unisexWaterList.add(unisexWater2Tuple);
    unisexWaterList.add(unisexWater3Tuple);
    unisexWaterList.add(unisexWater4Tuple);
    unisexWaterList.removeWhere((Tuple3 value) => value.item1.isEmpty);

    // サウナスペック表
    manSaunaSpecList.add(manAufguss);
    manSaunaSpecList.add(manAutoloyly);
    manSaunaSpecList.add(manSelfloyly);
    manSaunaSpecList.add(manGaikiyoku);
    manSaunaSpecList.add(manChair);
    womanSaunaSpecList.add(womanAufguss);
    womanSaunaSpecList.add(womanAutoloyly);
    womanSaunaSpecList.add(womanSelfloyly);
    womanSaunaSpecList.add(womanGaikiyoku);
    womanSaunaSpecList.add(womanChair);
    unisexSaunaSpecList.add(unisexAufguss);
    unisexSaunaSpecList.add(unisexAutoloyly);
    unisexSaunaSpecList.add(unisexSelfloyly);
    unisexSaunaSpecList.add(unisexGaikiyoku);
    unisexSaunaSpecList.add(unisexChair);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.clear, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          facilityName,
          style: const TextStyle(
            fontSize: 17.0,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            letterSpacing: -.3,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: deviceWidth,
          decoration: const BoxDecoration(color: Colors.white),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: double.infinity,
                      height: 200.h,
                      child: ClipRRect(
                        child: Image.network(
                          saunaikitaiImgUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (c, o, s) {
                            return Image.asset('assets/images/noImage.png');
                          },
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 5.0),
                      child: Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, right: 8, left: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Text(
                            target,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                    ),
                  ),
                ],
              ),

              /// ------------------ サウナ・水風呂表 ----------------------
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InnerTabController(
                  initailIndex: 0,
                  tebSpaceFlex: 4,
                  freeSpaceFlex: 0,
                  tabs: [
                    Tab(
                        child: Container(
                            width: double.infinity,
                            height: 30.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: bColorSaunaTabManBlue,
                            ),
                            child: Text(
                              '男湯',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0.sp,
                              ),
                            ))),
                    Tab(
                        child: Container(
                            width: double.infinity,
                            height: 30.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: bColorSaunaTabWomanRed,
                            ),
                            child: Text(
                              '女湯',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0.sp,
                              ),
                            ))),
                    Tab(
                        child: Container(
                            width: double.infinity,
                            height: 30.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: bColorSaunaTabUnisexGreen,
                            ),
                            child: Text(
                              '男女共同',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0.sp,
                              ),
                            ))),
                  ],
                  bodys: [
                    _saunaWaterCard(
                        manSaunaList, manWaterList, manSaunaSpecList),
                    _saunaWaterCard(
                        womanSaunaList, womanWaterList, womanSaunaSpecList),
                    _saunaWaterCard(
                        unisexSaunaList, unisexWaterList, unisexSaunaSpecList),
                  ],
                ),
              ),

              /// -------------- 基本情報の表 --------------
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 15, right: 15, bottom: 3),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          "施設情報",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                    ),

                    // 住所
                    InkWell(
                      onTap: () async {
                        await showDialog<String>(
                            context: context,
                            builder: (_) {
                              return MapDialog(
                                  lat, lng, facilityName, address, context);
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10, top: 2),
                              child: Icon(
                                Icons.map_outlined,
                                size: 20.0.sp,
                                color: Colors.black,
                              ),
                            ),
                            Flexible(
                                child: Text(
                              address,
                              softWrap: true,
                              style: TextStyle(
                                color: tColorUrlBLue,
                                fontSize: 15.0.sp,
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),

                    // パーキング
                    _infoItem(parking, Icons.local_parking_outlined),

                    // 電話
                    InkWell(
                      onTap: () {
                        _launchUrl(
                          'tel:$tel',
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 14.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 0, right: 10),
                              child: Icon(
                                Icons.phone_rounded,
                                size: 20.0.sp,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              tel,
                              style: TextStyle(
                                color: tColorUrlBLue,
                                fontSize: 15.0.sp,
                                // letterSpacing: -.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // 定休日
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 0, right: 10),
                            child: Text(
                              "休",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              regularHoliday,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0.sp,
                                // letterSpacing: -.3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // 営業時間
                    _infoItem(businessHours, Icons.schedule_rounded),
                    // 料金
                    _infoItem(price, Icons.currency_yen_rounded),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /// HP URL
                  ElevatedButton(
                    onPressed: () {
                      _launchUrl(
                        hpUrl,
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: Text(
                      'ホームページでみる',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0.sp,
                      ),
                    ),
                  ),

                  /// サウナイキタイ　URL
                  ElevatedButton(
                    onPressed: () {
                      _launchUrl(
                        saunaikitaiUrl,
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: bColorSaunaikitaiBlue,
                    ),
                    child: Text(
                      'サウナイキタイでみる',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0.sp,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
