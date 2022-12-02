import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:googlemap_sample/components/map_style.dart';
import 'package:googlemap_sample/model/facility.dart';
import 'package:googlemap_sample/screen/searched_page.dart';
import 'package:googlemap_sample/view_model/create_marker.dart';
import 'package:googlemap_sample/model/db_marker.dart';
import 'package:googlemap_sample/screen/facility_info_box.dart';
import 'package:googlemap_sample/model/place.dart';
import 'package:googlemap_sample/view_model/vm_marker.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  void rebuildMapPage() {
    setState(() {});
  }

  /// ここにはじめに一度だけ実行したいものを書く
  @override
  void initState() {
    super.initState();
    insertMarkerToDB();
    // ViewModel内に、再描画メソッドを渡す
    ViewModelMarker.instance.setRebuildMapPage(rebuildMapPage);

    /// マーカー読み込み
    Future<Set<Marker>> result1 = createMarkers();
    result1.then((result) {
      ViewModelMarker.instance.markers = result;
      print("マーカー読み込み　initState-完了");
    });
  }

  late GoogleMapController _controller;
  static const CameraPosition _initialPosition = CameraPosition(
      //渋谷
      target: LatLng(35.658034, 139.701636),
      zoom: 14);

  Place? searchedPlace;

  late final CameraPosition currentPosition;

  Future<void> getCurrentPosition() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('現在地の取得はできません');
      }
    }
    final Position _currentPosition = await Geolocator.getCurrentPosition();
    currentPosition = CameraPosition(
        target: LatLng(_currentPosition.latitude, _currentPosition.longitude),
        zoom: 14);
  }

  //locationFromAddress はgeocodingのメソッド。引数は住所。とりあえず一番初めの井戸軽度を取得。
  Future<CameraPosition> searchLatLng(String txt) async {
    List<Location> locations = await locationFromAddress(txt);
    return CameraPosition(
        target: LatLng(locations[0].latitude, locations[0].longitude),
        zoom: 15);
  }

  /// alwaysDrink 参考 (途中)
  List<Facility> places = [];
  Place? selectedPlace; // 地図で中心表示にしたい＆PageViewで選択したい場所

  @override
  Widget build(BuildContext context) {
    print("_MapPage ビルド-完了");

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          //------------ GoogleMap ---------------
          GoogleMap(
            mapType: MapType.normal,
            myLocationButtonEnabled: false, //現在地表示ボタンの表示
            myLocationEnabled: true, //現在地ピンの表示
            mapToolbarEnabled: false,
            buildingsEnabled: true,
            rotateGesturesEnabled: false, //地図の回転
            tiltGesturesEnabled: false, // 地図の傾き
            markers: ViewModelMarker.instance.markers,
            initialCameraPosition: _initialPosition,
            onMapCreated: (GoogleMapController controller) async {
              await getCurrentPosition();
              _controller = controller;
              _controller.setMapStyle(mapStyleLight);
              // ? _controller.setMapStyle(mapStyleDark)
              _controller.animateCamera(
                  CameraUpdate.newCameraPosition(currentPosition));
            },
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: FacilityInfoBox(),
          ),

          ///---------------- 現在地ボタン（FloatingActionButton） -----------------
          // ノッチ対応
          SafeArea(
            child: Align(
              alignment: const Alignment(1, 0.51),
              child: FloatingActionButton.small(
                heroTag: "hero1",
                child: const Icon(Icons.gps_fixed),
                //  現在地取得
                onPressed: () => _controller.animateCamera(
                    CameraUpdate.newCameraPosition(currentPosition)),
              ),
            ),
          ),

          ///---------------- 検索ボタン（FloatingActionButton） -----------------
          SafeArea(
            child: Align(
              alignment: const Alignment(1, -1),
              child: FloatingActionButton.small(
                heroTag: "hero3",
                child: const Icon(Icons.search_rounded),
                onPressed: () async {
                  /// todo
                  Place? result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchedPage()));
                  searchedPlace = result;
                  if (searchedPlace != null) {
                    CameraPosition searchedPosition =
                        await searchLatLng(searchedPlace!.address ?? '');
                    _controller.animateCamera(
                        CameraUpdate.newCameraPosition(searchedPosition));
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
