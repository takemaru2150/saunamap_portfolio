import 'package:flutter/material.dart';
import 'package:googlemap_sample/components/color.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(top: 50, right: 5, left: 5),
        child: TextField(
          enabled: true,
          style: TextStyle(color: colorBlack),
          maxLines: 1,
          decoration: InputDecoration(
            fillColor: colorWhite,
            filled: true,
            isDense: true,
            contentPadding: EdgeInsets.all(10),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: colorSearchBorder,
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: colorSearchBorder,
                width: 1.0,
              ),
            ),
            prefixIcon: Icon(Icons.search, color: colorSearchTxt),
            labelText: 'キーワード検索',
            labelStyle: TextStyle(
              fontSize: 12,
              color: colorSearchTxt,
            ),
          ),
        ));
  }
}
