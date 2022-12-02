import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 基本情報の表　スタイル
Widget _infoItem(String title, IconData icon) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2, right: 10),
          child: Icon(
            icon,
            size: 20.0.sp,
            color: Colors.black,
          ),
        ),
        Flexible(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0.sp,
              // letterSpacing: -.3,
            ),
          ),
        ),
      ],
    ),
  );
}
