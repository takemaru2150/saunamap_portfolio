import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print("_Favorite ビルド-完了");
    return Container(
      child: const Text('Favorite'),
      alignment: Alignment.center,
      color: Colors.pink.withOpacity(0.5)
    );
  }
}