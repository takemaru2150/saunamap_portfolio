import 'package:flutter/material.dart';
import 'package:googlemap_sample/components/color.dart';

ThemeData themeLight = ThemeData.light().copyWith(
  primaryColor: Colors.white,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    foregroundColor: Colors.black,
    backgroundColor: bColorFABWhite,
    elevation: 0, // 影
    shape: CircleBorder(
      side: BorderSide(
        color: Color(0xff707070),
        width: 1,
      ),
    ),
  ),
);

ThemeData themeDark = ThemeData.dark().copyWith(
  // primaryColor: Colors.black,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    foregroundColor: Colors.white,
    backgroundColor: bColorFABBlack,
    elevation: 0,
    shape: CircleBorder(
      side: BorderSide(
        color: Color(0xff707070),
        width: 1,
      ),
    ),
  ),
);

// MyTheme.instance._isDark
// class CurrentTheme {
//   /// インスタンス生成
//   CurrentTheme._();
//   static final instance = CurrentTheme._();

//   bool isDark = false;
// }

// テーマ変更用の状態クラス
class MyTheme extends ChangeNotifier {
  ThemeData current = themeLight;
  bool _isDark = false;
  // Getter
  bool get isDark => _isDark;
  // setter
  set isDark(bool value) {
    _isDark = value;
  }

  // とりあえずトグルでテーマを切り替える関数だけ定義しています
  toggle() {
    // CurrentTheme.instance.isDark = !CurrentTheme.instance.isDark;
    // isDark(!_isDark);
    _isDark = !_isDark;
    // current = CurrentTheme.instance.isDark ? themeDark : themeLight;
    current = _isDark ? themeDark : themeLight;
    notifyListeners(); // 通知
  }
}
