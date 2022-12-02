import 'package:flutter/material.dart';
import 'package:googlemap_sample/screen/map_page.dart';

class BaseTabView extends StatefulWidget {
  const BaseTabView({Key? key}) : super(key: key);

  @override
  _BaseTabView createState() => _BaseTabView();
}

class _BaseTabView extends State<BaseTabView> {
  @override
  Widget build(BuildContext context) {
    print("BaseTabView ビルド-完了");

    return const Scaffold(
      body: MapPage(),
    );
  }
}
