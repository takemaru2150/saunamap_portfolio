import 'package:google_maps_flutter/google_maps_flutter.dart';

class ViewModelMarker {
  // シングルトン化
  ViewModelMarker._();

  static final instance = ViewModelMarker._();

  // marker
  late Set<Marker> markers = {};

  late Function rebuildFacilityInfoBox;
  late Function rebuildMapPage;

  // 再描画
  void setRebuildFacilityInfoBox(Function method) {
    rebuildFacilityInfoBox = method;
  }

  // 再描画
  void setRebuildMapPage(Function method) {
    rebuildMapPage = method;
  }
}
