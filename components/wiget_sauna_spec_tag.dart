import 'package:flutter/material.dart';

/// サウナスペックタグ　スタイル
Widget _saunaSpecTag(String title) {
  return Container(
    width: 90,
    height: 25,
    // padding: const EdgeInsets.only(top: 3, bottom: 3, right: 8, left: 8),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      // borderRadius: BorderRadius.circular(6),
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
    ),
    child: Text(
      title,
      style: const TextStyle(
          fontSize: 10.0, fontWeight: FontWeight.w600, color: Colors.black),
    ),
  );
}
