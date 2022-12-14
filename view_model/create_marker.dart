import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:googlemap_sample/components/color.dart';
import 'package:googlemap_sample/model/facility.dart';
import 'package:googlemap_sample/view_model/changed_marker_color.dart';
import 'package:googlemap_sample/model/db_marker.dart';
import 'package:googlemap_sample/view_model/selected_marker.dart';
import 'package:googlemap_sample/view_model/vm_marker.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart' as sql;

///データベースからmarkerを取得しMarker型に変換
Future<Set<Marker>> createMarkers() async {
  final sql.Database db = await MarkerDatabase.db();
  final List<Map<String, dynamic>> maps = await db.query(
    'marker', // table name
  );

  /// Change Selected Marker color
  final icon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(24, 24)), 'assets/images/pinRed.png');

  /// List<Map<String, dynamic> を List<Marker>に変換する。
  List<dynamic> data = List.generate(maps.length, (i) {
    return Facility(
      id: maps[i]['id'],
      lat: maps[i]['lat'],
      lng: maps[i]['lng'],
      facilityName: maps[i]['facilityName'],
      facilityType: maps[i]['facilityType'],
      saunaikitaiUrl: maps[i]['saunaikitaiUrl'],
      address: maps[i]['address'],
      parking: maps[i]['parking'],
      tel: maps[i]['tel'],
      hpUrl: maps[i]['hpUrl'],
      regularHoliday: maps[i]['regularHoliday'],
      businessHours: maps[i]['businessHours'],
      price: maps[i]['price'],
      target: maps[i]['target'],
      saunaikitaiCounter: maps[i]['saunaikitaiCounter'],
      manSauna1Temp: maps[i]['manSauna1Temp'],
      manSauna1Capacity: maps[i]['manSauna1Capacity'],
      manSauna2Temp: maps[i]['manSauna2Temp'],
      manSauna2Capacity: maps[i]['manSauna2Capacity'],
      manSauna3Temp: maps[i]['manSauna3Temp'],
      manSauna3Capacity: maps[i]['manSauna3Capacity'],
      manSauna4Temp: maps[i]['manSauna4Temp'],
      manSauna4Capacity: maps[i]['manSauna4Capacity'],
      manSauna5Temp: maps[i]['manSauna5Temp'],
      manSauna5Capacity: maps[i]['manSauna5Capacity'],
      manSauna6Temp: maps[i]['manSauna6Temp'],
      manSauna6Capacity: maps[i]['manSauna6Capacity'],
      manSauna7Temp: maps[i]['manSauna7Temp'],
      manSauna7Capacity: maps[i]['manSauna7Capacity'],
      manWater1Temp: maps[i]['manWater1Temp'],
      manWater1Capacity: maps[i]['manWater1Capacity'],
      manWater2Temp: maps[i]['manWater2Temp'],
      manWater2Capacity: maps[i]['manWater2Capacity'],
      manWater3Temp: maps[i]['manWater3Temp'],
      manWater3Capacity: maps[i]['manWater3Capacity'],
      manWater4Temp: maps[i]['manWater4Temp'],
      manWater4Capacity: maps[i]['manWater4Capacity'],
      manWater5Temp: maps[i]['manWater5Temp'],
      manWater5Capacity: maps[i]['manWater5Capacity'],
      manWater6Temp: maps[i]['manWater6Temp'],
      manWater6Capacity: maps[i]['manWater6Capacity'],
      manAufguss: maps[i]['manAufguss'],
      manAutoloyly: maps[i]['manAutoloyly'],
      manSelfloyly: maps[i]['manSelfloyly'],
      manGaikiyoku: maps[i]['manGaikiyoku'],
      manChair: maps[i]['manChair'],
      womanSauna1Temp: maps[i]['womanSauna1Temp'],
      womanSauna1Capacity: maps[i]['womanSauna1Capacity'],
      womanSauna2Temp: maps[i]['womanSauna2Temp'],
      womanSauna2Capacity: maps[i]['womanSauna2Capacity'],
      womanSauna3Temp: maps[i]['womanSauna3Temp'],
      womanSauna3Capacity: maps[i]['womanSauna3Capacity'],
      womanSauna4Temp: maps[i]['womanSauna4Temp'],
      womanSauna4Capacity: maps[i]['womanSauna4Capacity'],
      womanSauna5Temp: maps[i]['womanSauna5Temp'],
      womanSauna5Capacity: maps[i]['womanSauna5Capacity'],
      womanSauna6Temp: maps[i]['womanSauna6Temp'],
      womanSauna6Capacity: maps[i]['womanSauna6Capacity'],
      womanWater1Temp: maps[i]['womanWater1Temp'],
      womanWater1Capacity: maps[i]['womanWater1Capacity'],
      womanWater2Temp: maps[i]['womanWater2Temp'],
      womanWater2Capacity: maps[i]['womanWater2Capacity'],
      womanWater3Temp: maps[i]['womanWater3Temp'],
      womanWater3Capacity: maps[i]['womanWater3Capacity'],
      womanWater4Temp: maps[i]['womanWater4Temp'],
      womanWater4Capacity: maps[i]['womanWater4Capacity'],
      womanAufguss: maps[i]['womanAufguss'],
      womanAutoloyly: maps[i]['womanAutoloyly'],
      womanSelfloyly: maps[i]['womanSelfloyly'],
      womanGaikiyoku: maps[i]['womanGaikiyoku'],
      womanChair: maps[i]['womanChair'],
      unisexSauna1Temp: maps[i]['unisexSauna1Temp'],
      unisexSauna1Capacity: maps[i]['unisexSauna1Capacity'],
      unisexSauna2Temp: maps[i]['unisexSauna2Temp'],
      unisexSauna2Capacity: maps[i]['unisexSauna2Capacity'],
      unisexSauna3Temp: maps[i]['unisexSauna3Temp'],
      unisexSauna3Capacity: maps[i]['unisexSauna3Capacity'],
      unisexSauna4Temp: maps[i]['unisexSauna4Temp'],
      unisexSauna4Capacity: maps[i]['unisexSauna4Capacity'],
      unisexSauna5Temp: maps[i]['unisexSauna5Temp'],
      unisexSauna5Capacity: maps[i]['unisexSauna5Capacity'],
      unisexSauna6Temp: maps[i]['unisexSauna6Temp'],
      unisexSauna6Capacity: maps[i]['unisexSauna6Capacity'],
      unisexWater1Temp: maps[i]['unisexWater1Temp'],
      unisexWater1Capacity: maps[i]['unisexWater1Capacity'],
      unisexWater2Temp: maps[i]['unisexWater2Temp'],
      unisexWater2Capacity: maps[i]['unisexWater2Capacity'],
      unisexWater3Temp: maps[i]['unisexWater3Temp'],
      unisexWater3Capacity: maps[i]['unisexWater3Capacity'],
      unisexWater4Temp: maps[i]['unisexWater4Temp'],
      unisexWater4Capacity: maps[i]['unisexWater4Capacity'],
      unisexAufguss: maps[i]['unisexAufguss'],
      unisexAutoloyly: maps[i]['unisexAutoloyly'],
      unisexSelfloyly: maps[i]['unisexSelfloyly'],
      unisexGaikiyoku: maps[i]['unisexGaikiyoku'],
      unisexChair: maps[i]['unisexChair'],
      saunaikitaiImgUrl: maps[i]['saunaikitaiImgUrl'],
      manSauna1Tag1: maps[i]['manSauna1Tag1'],
      manSauna1Tag2: maps[i]['manSauna1Tag2'],
      manSauna1Tag3: maps[i]['manSauna1Tag3'],
      manSauna1Tag4: maps[i]['manSauna1Tag4'],
      manSauna1Tag5: maps[i]['manSauna1Tag5'],
      manSauna2Tag1: maps[i]['manSauna2Tag1'],
      manSauna2Tag2: maps[i]['manSauna2Tag2'],
      manSauna2Tag3: maps[i]['manSauna2Tag3'],
      manSauna2Tag4: maps[i]['manSauna2Tag4'],
      manSauna2Tag5: maps[i]['manSauna2Tag5'],
      manSauna3Tag1: maps[i]['manSauna3Tag1'],
      manSauna3Tag2: maps[i]['manSauna3Tag2'],
      manSauna3Tag3: maps[i]['manSauna3Tag3'],
      manSauna3Tag4: maps[i]['manSauna3Tag4'],
      manSauna3Tag5: maps[i]['manSauna3Tag5'],
      manSauna4Tag1: maps[i]['manSauna4Tag1'],
      manSauna4Tag2: maps[i]['manSauna4Tag2'],
      manSauna4Tag3: maps[i]['manSauna4Tag3'],
      manSauna4Tag4: maps[i]['manSauna4Tag4'],
      manSauna4Tag5: maps[i]['manSauna4Tag5'],
      manSauna5Tag1: maps[i]['manSauna5Tag1'],
      manSauna5Tag2: maps[i]['manSauna5Tag2'],
      manSauna5Tag3: maps[i]['manSauna5Tag3'],
      manSauna5Tag4: maps[i]['manSauna5Tag4'],
      manSauna5Tag5: maps[i]['manSauna5Tag5'],
      manSauna6Tag1: maps[i]['manSauna6Tag1'],
      manSauna6Tag2: maps[i]['manSauna6Tag2'],
      manSauna6Tag3: maps[i]['manSauna6Tag3'],
      manSauna6Tag4: maps[i]['manSauna6Tag4'],
      manSauna6Tag5: maps[i]['manSauna6Tag5'],
      manSauna7Tag1: maps[i]['manSauna7Tag1'],
      manSauna7Tag2: maps[i]['manSauna7Tag2'],
      manSauna7Tag3: maps[i]['manSauna7Tag3'],
      manSauna7Tag4: maps[i]['manSauna7Tag4'],
      manWater1Tag1: maps[i]['manWater1Tag1'],
      manWater1Tag2: maps[i]['manWater1Tag2'],
      manWater2Tag1: maps[i]['manWater2Tag1'],
      manWater2Tag2: maps[i]['manWater2Tag2'],
      manWater3Tag1: maps[i]['manWater3Tag1'],
      manWater3Tag2: maps[i]['manWater3Tag2'],
      manWater4Tag1: maps[i]['manWater4Tag1'],
      manWater4Tag2: maps[i]['manWater4Tag2'],
      manWater5Tag1: maps[i]['manWater5Tag1'],
      manWater5Tag2: maps[i]['manWater5Tag2'],
      manWater6Tag1: maps[i]['manWater6Tag1'],
      womanSauna1Tag1: maps[i]['womanSauna1Tag1'],
      womanSauna1Tag2: maps[i]['womanSauna1Tag2'],
      womanSauna1Tag3: maps[i]['womanSauna1Tag3'],
      womanSauna1Tag4: maps[i]['womanSauna1Tag4'],
      womanSauna1Tag5: maps[i]['womanSauna1Tag5'],
      womanSauna2Tag1: maps[i]['womanSauna2Tag1'],
      womanSauna2Tag2: maps[i]['womanSauna2Tag2'],
      womanSauna2Tag3: maps[i]['womanSauna2Tag3'],
      womanSauna2Tag4: maps[i]['womanSauna2Tag4'],
      womanSauna2Tag5: maps[i]['womanSauna2Tag5'],
      womanSauna3Tag1: maps[i]['womanSauna3Tag1'],
      womanSauna3Tag2: maps[i]['womanSauna3Tag2'],
      womanSauna3Tag3: maps[i]['womanSauna3Tag3'],
      womanSauna3Tag4: maps[i]['womanSauna3Tag4'],
      womanSauna3Tag5: maps[i]['womanSauna3Tag5'],
      womanSauna4Tag1: maps[i]['womanSauna4Tag1'],
      womanSauna4Tag2: maps[i]['womanSauna4Tag2'],
      womanSauna4Tag3: maps[i]['womanSauna4Tag3'],
      womanSauna4Tag4: maps[i]['womanSauna4Tag4'],
      womanSauna5Tag1: maps[i]['womanSauna5Tag1'],
      womanSauna5Tag2: maps[i]['womanSauna5Tag2'],
      womanSauna5Tag3: maps[i]['womanSauna5Tag3'],
      womanSauna5Tag4: maps[i]['womanSauna5Tag4'],
      womanSauna6Tag1: maps[i]['womanSauna6Tag1'],
      womanSauna6Tag2: maps[i]['womanSauna6Tag2'],
      womanWater1Tag1: maps[i]['womanWater1Tag1'],
      womanWater1Tag2: maps[i]['womanWater1Tag2'],
      womanWater2Tag1: maps[i]['womanWater2Tag1'],
      womanWater2Tag2: maps[i]['womanWater2Tag2'],
      womanWater3Tag1: maps[i]['womanWater3Tag1'],
      womanWater3Tag2: maps[i]['womanWater3Tag2'],
      womanWater4Tag1: maps[i]['womanWater4Tag1'],
      unisexSauna1Tag1: maps[i]['unisexSauna1Tag1'],
      unisexSauna1Tag2: maps[i]['unisexSauna1Tag2'],
      unisexSauna1Tag3: maps[i]['unisexSauna1Tag3'],
      unisexSauna1Tag4: maps[i]['unisexSauna1Tag4'],
      unisexSauna1Tag5: maps[i]['unisexSauna1Tag5'],
      unisexSauna2Tag1: maps[i]['unisexSauna2Tag1'],
      unisexSauna2Tag2: maps[i]['unisexSauna2Tag2'],
      unisexSauna2Tag3: maps[i]['unisexSauna2Tag3'],
      unisexSauna2Tag4: maps[i]['unisexSauna2Tag4'],
      unisexSauna2Tag5: maps[i]['unisexSauna2Tag5'],
      unisexSauna3Tag1: maps[i]['unisexSauna3Tag1'],
      unisexSauna3Tag2: maps[i]['unisexSauna3Tag2'],
      unisexSauna3Tag3: maps[i]['unisexSauna3Tag3'],
      unisexSauna3Tag4: maps[i]['unisexSauna3Tag4'],
      unisexSauna3Tag5: maps[i]['unisexSauna3Tag5'],
      unisexSauna4Tag1: maps[i]['unisexSauna4Tag1'],
      unisexSauna4Tag2: maps[i]['unisexSauna4Tag2'],
      unisexSauna4Tag3: maps[i]['unisexSauna4Tag3'],
      unisexSauna4Tag4: maps[i]['unisexSauna4Tag4'],
      unisexSauna4Tag5: maps[i]['unisexSauna4Tag5'],
      unisexSauna5Tag1: maps[i]['unisexSauna5Tag1'],
      unisexSauna5Tag2: maps[i]['unisexSauna5Tag2'],
      unisexSauna5Tag3: maps[i]['unisexSauna5Tag3'],
      unisexSauna5Tag4: maps[i]['unisexSauna5Tag4'],
      unisexSauna5Tag5: maps[i]['unisexSauna5Tag5'],
      unisexSauna6Tag1: maps[i]['unisexSauna6Tag1'],
      unisexSauna6Tag2: maps[i]['unisexSauna6Tag2'],
      unisexSauna6Tag3: maps[i]['unisexSauna6Tag3'],
      unisexSauna6Tag4: maps[i]['unisexSauna6Tag4'],
      unisexSauna6Tag5: maps[i]['unisexSauna6Tag5'],
      unisexWater1Tag1: maps[i]['unisexWater1Tag1'],
      unisexWater1Tag2: maps[i]['unisexWater1Tag2'],
      unisexWater2Tag1: maps[i]['unisexWater2Tag1'],
      unisexWater2Tag2: maps[i]['unisexWater2Tag2'],
      unisexWater3Tag1: maps[i]['unisexWater3Tag1'],
      unisexWater3Tag2: maps[i]['unisexWater3Tag2'],
      unisexWater4Tag1: maps[i]['unisexWater4Tag1'],
    );
  });

  Set<Marker> markers = {};
  for (var doc in data) {
    var marker = Marker(
      markerId: MarkerId(doc.id.toString()),
      position: LatLng(doc.lat, doc.lng),
      icon: defaultIcon,
      onTap: () {
        /// changed_marker_colorにidを渡す
        ChangedMarkerColor.instance
            .onMarkerTapped(doc.id, doc.saunaikitaiCounter);

        ///　selected_markerに情報を渡す
        SelectedMarker.instance.onMarkerTapped(
            doc.id,
            doc.lat,
            doc.lng,
            doc.facilityName,
            doc.facilityType,
            doc.saunaikitaiUrl,
            doc.address,
            doc.parking,
            doc.tel,
            doc.hpUrl,
            doc.regularHoliday,
            doc.businessHours,
            doc.price,
            doc.target,
            doc.saunaikitaiCounter,
            doc.manSauna1Temp,
            doc.manSauna1Capacity,
            doc.manSauna2Temp,
            doc.manSauna2Capacity,
            doc.manSauna3Temp,
            doc.manSauna3Capacity,
            doc.manSauna4Temp,
            doc.manSauna4Capacity,
            doc.manSauna5Temp,
            doc.manSauna5Capacity,
            doc.manSauna6Temp,
            doc.manSauna6Capacity,
            doc.manSauna7Temp,
            doc.manSauna7Capacity,
            doc.manWater1Temp,
            doc.manWater1Capacity,
            doc.manWater2Temp,
            doc.manWater2Capacity,
            doc.manWater3Temp,
            doc.manWater3Capacity,
            doc.manWater4Temp,
            doc.manWater4Capacity,
            doc.manWater5Temp,
            doc.manWater5Capacity,
            doc.manWater6Temp,
            doc.manWater6Capacity,
            doc.manAufguss,
            doc.manAutoloyly,
            doc.manSelfloyly,
            doc.manGaikiyoku,
            doc.manChair,
            doc.womanSauna1Temp,
            doc.womanSauna1Capacity,
            doc.womanSauna2Temp,
            doc.womanSauna2Capacity,
            doc.womanSauna3Temp,
            doc.womanSauna3Capacity,
            doc.womanSauna4Temp,
            doc.womanSauna4Capacity,
            doc.womanSauna5Temp,
            doc.womanSauna5Capacity,
            doc.womanSauna6Temp,
            doc.womanSauna6Capacity,
            doc.womanWater1Temp,
            doc.womanWater1Capacity,
            doc.womanWater2Temp,
            doc.womanWater2Capacity,
            doc.womanWater3Temp,
            doc.womanWater3Capacity,
            doc.womanWater4Temp,
            doc.womanWater4Capacity,
            doc.womanAufguss,
            doc.womanAutoloyly,
            doc.womanSelfloyly,
            doc.womanGaikiyoku,
            doc.womanChair,
            doc.unisexSauna1Temp,
            doc.unisexSauna1Capacity,
            doc.unisexSauna2Temp,
            doc.unisexSauna2Capacity,
            doc.unisexSauna3Temp,
            doc.unisexSauna3Capacity,
            doc.unisexSauna4Temp,
            doc.unisexSauna4Capacity,
            doc.unisexSauna5Temp,
            doc.unisexSauna5Capacity,
            doc.unisexSauna6Temp,
            doc.unisexSauna6Capacity,
            doc.unisexWater1Temp,
            doc.unisexWater1Capacity,
            doc.unisexWater2Temp,
            doc.unisexWater2Capacity,
            doc.unisexWater3Temp,
            doc.unisexWater3Capacity,
            doc.unisexWater4Temp,
            doc.unisexWater4Capacity,
            doc.unisexAufguss,
            doc.unisexAutoloyly,
            doc.unisexSelfloyly,
            doc.unisexGaikiyoku,
            doc.unisexChair,
            doc.saunaikitaiImgUrl,
            doc.manSauna1Tag1,
            doc.manSauna1Tag2,
            doc.manSauna1Tag3,
            doc.manSauna1Tag4,
            doc.manSauna1Tag5,
            doc.manSauna2Tag1,
            doc.manSauna2Tag2,
            doc.manSauna2Tag3,
            doc.manSauna2Tag4,
            doc.manSauna2Tag5,
            doc.manSauna3Tag1,
            doc.manSauna3Tag2,
            doc.manSauna3Tag3,
            doc.manSauna3Tag4,
            doc.manSauna3Tag5,
            doc.manSauna4Tag1,
            doc.manSauna4Tag2,
            doc.manSauna4Tag3,
            doc.manSauna4Tag4,
            doc.manSauna4Tag5,
            doc.manSauna5Tag1,
            doc.manSauna5Tag2,
            doc.manSauna5Tag3,
            doc.manSauna5Tag4,
            doc.manSauna5Tag5,
            doc.manSauna6Tag1,
            doc.manSauna6Tag2,
            doc.manSauna6Tag3,
            doc.manSauna6Tag4,
            doc.manSauna6Tag5,
            doc.manSauna7Tag1,
            doc.manSauna7Tag2,
            doc.manSauna7Tag3,
            doc.manSauna7Tag4,
            doc.manWater1Tag1,
            doc.manWater1Tag2,
            doc.manWater2Tag1,
            doc.manWater2Tag2,
            doc.manWater3Tag1,
            doc.manWater3Tag2,
            doc.manWater4Tag1,
            doc.manWater4Tag2,
            doc.manWater5Tag1,
            doc.manWater5Tag2,
            doc.manWater6Tag1,
            doc.womanSauna1Tag1,
            doc.womanSauna1Tag2,
            doc.womanSauna1Tag3,
            doc.womanSauna1Tag4,
            doc.womanSauna1Tag5,
            doc.womanSauna2Tag1,
            doc.womanSauna2Tag2,
            doc.womanSauna2Tag3,
            doc.womanSauna2Tag4,
            doc.womanSauna2Tag5,
            doc.womanSauna3Tag1,
            doc.womanSauna3Tag2,
            doc.womanSauna3Tag3,
            doc.womanSauna3Tag4,
            doc.womanSauna3Tag5,
            doc.womanSauna4Tag1,
            doc.womanSauna4Tag2,
            doc.womanSauna4Tag3,
            doc.womanSauna4Tag4,
            doc.womanSauna5Tag1,
            doc.womanSauna5Tag2,
            doc.womanSauna5Tag3,
            doc.womanSauna5Tag4,
            doc.womanSauna6Tag1,
            doc.womanSauna6Tag2,
            doc.womanWater1Tag1,
            doc.womanWater1Tag2,
            doc.womanWater2Tag1,
            doc.womanWater2Tag2,
            doc.womanWater3Tag1,
            doc.womanWater3Tag2,
            doc.womanWater4Tag1,
            doc.unisexSauna1Tag1,
            doc.unisexSauna1Tag2,
            doc.unisexSauna1Tag3,
            doc.unisexSauna1Tag4,
            doc.unisexSauna1Tag5,
            doc.unisexSauna2Tag1,
            doc.unisexSauna2Tag2,
            doc.unisexSauna2Tag3,
            doc.unisexSauna2Tag4,
            doc.unisexSauna2Tag5,
            doc.unisexSauna3Tag1,
            doc.unisexSauna3Tag2,
            doc.unisexSauna3Tag3,
            doc.unisexSauna3Tag4,
            doc.unisexSauna3Tag5,
            doc.unisexSauna4Tag1,
            doc.unisexSauna4Tag2,
            doc.unisexSauna4Tag3,
            doc.unisexSauna4Tag4,
            doc.unisexSauna4Tag5,
            doc.unisexSauna5Tag1,
            doc.unisexSauna5Tag2,
            doc.unisexSauna5Tag3,
            doc.unisexSauna5Tag4,
            doc.unisexSauna5Tag5,
            doc.unisexSauna6Tag1,
            doc.unisexSauna6Tag2,
            doc.unisexSauna6Tag3,
            doc.unisexSauna6Tag4,
            doc.unisexSauna6Tag5,
            doc.unisexWater1Tag1,
            doc.unisexWater1Tag2,
            doc.unisexWater2Tag1,
            doc.unisexWater2Tag2,
            doc.unisexWater3Tag1,
            doc.unisexWater3Tag2,
            doc.unisexWater4Tag1);

        ///再描画
        ViewModelMarker.instance.rebuildFacilityInfoBox();
        ViewModelMarker.instance.rebuildMapPage();
      },
    );
    if (doc.saunaikitaiCounter > 863) {
      marker = marker.copyWith(
        iconParam: over3000Icon,
        zIndexParam: 4.0,
      );
    } else if (doc.saunaikitaiCounter > 373) {
      marker = marker.copyWith(
        iconParam: over1500Icon,
        zIndexParam: 3.0,
      );
    }
    markers.add(marker);
  }
  print("createMarkers 関数-完了");

  ///再描画
  ViewModelMarker.instance.rebuildMapPage();
  return markers;
}
