import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:googlemap_sample/components/color.dart';
import 'package:googlemap_sample/view_model/vm_marker.dart';

class ChangedMarkerColor {
  /// ._() のように書くことで、外部ファイルが Manager インスタンスを作成できないようにすることができる。
  ChangedMarkerColor._();

  /// 内部の変数に ひとつだけ Manager のインスタンスを生成し代入する。
  static final instance = ChangedMarkerColor._();

  /// ここに複数の画面間で使いたい変数群を書いていく
  int lastSaunaikitaiCounter = 0;

  Future<void> onMarkerTapped(
    int idValue,
    int saunaikitaiCounterValue,
  ) async {
    var newMarkerValue = ViewModelMarker.instance.markers
        .where((Marker value) => value.markerId == MarkerId(idValue.toString()))
        .toList();
    var lastMarkerValue = ViewModelMarker.instance.markers
        .where((Marker value) => value.zIndex == 5.0)
        .toList();

    /// last marker change to Red marker
    if (lastMarkerValue.isNotEmpty) {
      if (lastMarkerValue[0].zIndex == 5.0) {
        ViewModelMarker.instance.markers.remove(lastMarkerValue[0]);
        if (lastSaunaikitaiCounter > 863) {
          lastMarkerValue[0] = lastMarkerValue[0].copyWith(
            iconParam: over3000Icon,
            zIndexParam: 4.0,
          );
        } else if (lastSaunaikitaiCounter > 373) {
          lastMarkerValue[0] = lastMarkerValue[0].copyWith(
            iconParam: over1500Icon,
            zIndexParam: 3.0,
          );
        } else {
          lastMarkerValue[0] = lastMarkerValue[0].copyWith(
            iconParam: defaultIcon,
            zIndexParam: 0.0,
          );
        }
        ViewModelMarker.instance.markers.add(lastMarkerValue[0]);
      }
    }

    /// new marker change to Blue marker
    if (newMarkerValue.isNotEmpty) {
      if (newMarkerValue[0].markerId == MarkerId(idValue.toString())) {
        ViewModelMarker.instance.markers.remove(newMarkerValue[0]);
        newMarkerValue[0] = newMarkerValue[0]
            .copyWith(iconParam: selectedIcon, zIndexParam: 5.0);
        ViewModelMarker.instance.markers.add(newMarkerValue[0]);
      }
    }
    lastSaunaikitaiCounter = saunaikitaiCounterValue;
  }
}
