import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// 基本的にカラーコードを指定。その直前に透明度を指定(0xff)
// https://gist.github.com/creativecreatorormaybenot/8710f6f752f6a0f2cae13abb538f0e8e#hex-opacity-values

const colorMain = Color(0xFF00B5AB);

const colorSearchBorder = Color(0xFFCCCCCC);
const colorSearchTxt = Color(0xFF333333);
// const c_search_focus = Color(0xFF00B5AD);
const colorWhite = Color(0xfff6f6f6);
// FloatingActionButton　背景色
const bColorFABWhite = Color(0xffffffff);
// const bColorFABWhite = Color(0xfff6f6f6);
const bColorFABBlack = Color(0xff111111);
// const bColorFABBlack = Color(0xff333333);
const colorGrey = Color(0xffdbd9d6);
const colorRed = Color(0xffD33232);
const colorBlack = Color(0xff333333);
// 現在地,設定,検索ボタン（FloatingActionButton）アイコン　色
const colorFABBlack = Color(0xff333333);
// 施設情報BOX 施設名
const tColorFIBFacilityNameBlack = Color(0xff000000);
// 施設情報BOX 男の青
const dColorFIBManIconBlue = Color(0xff3478F6);
// 施設情報BOX 白文字
const tColorFIBIconWhite = Color(0xffFFFFFF);
// 施設情報BOX 女の赤
const dColorFIBWomanIconRed = Color(0xffF63434);
// 施設情報BOX アイコン背景のグレー
const dColorFIBIconGrey = Color(0xffF1F1F2);
// 施設情報BOX アイコン文字の黒
const tColorFIBIconBlack = Color(0xff2F2F2F);
// URLリンクの青
const tColorUrlBLue = Color(0xff0066c0);
// サウナタブ 男の青
const bColorSaunaTabManBlue = Color(0xff3478F6);
// サウナタブ 女の赤
const bColorSaunaTabWomanRed = Color(0xffF63434);
// サウナタブ 男女共同の緑
const bColorSaunaTabUnisexGreen = Color(0xff23AC38);
// サウナタブ サウナの赤
const tColorSaunaTabSaunaRed = Color(0xffef0d0d);
// サウナタブ 水風呂の青
const tColorSaunaTabWaterBlue = Color(0xff0051e0);
// サウナタブ サウナタグの背景のグレー
const bColorSaunaTabSaunaTagGray = Color(0xff888888);
// サウナタブ サウナタグの背景のグレー
const tColorTargetTagYellow = Color(0xffFFEB3B);
// サウナイキタイボタン　背景の青
const bColorSaunaikitaiBlue = Color(0xff0051e0);

/// marker color
// https://www.defrag.works/blog/1068

///サウナイキタイ数　＜　500　：　緑　　165.0
///デフォルト：緑
BitmapDescriptor defaultIcon = BitmapDescriptor.defaultMarkerWithHue(165.0);

/// 選択：　ピンク
BitmapDescriptor selectedIcon = BitmapDescriptor.defaultMarkerWithHue(300.0);

///サウナイキタイ数　＞　3000　：　赤 0.0
BitmapDescriptor over3000Icon = BitmapDescriptor.defaultMarkerWithHue(0.0);

//サウナイキタイ数　＞　2000　：　紫　255
// BitmapDescriptor over2000Icon = BitmapDescriptor.defaultMarkerWithHue(0.0);

///サウナイキタイ数　＞　1500　：　紫　255
BitmapDescriptor over1500Icon = BitmapDescriptor.defaultMarkerWithHue(255.0);

///サウナイキタイ数　＞　500　：　茶　　35.0
BitmapDescriptor over500Icon = BitmapDescriptor.defaultMarkerWithHue(35.0);
// 青
// BitmapDescriptor over500Icon = BitmapDescriptor.defaultMarkerWithHue(210.0);
