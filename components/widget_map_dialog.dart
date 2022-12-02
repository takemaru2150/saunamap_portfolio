import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// ナビを呼ぶ
Widget MapDialog(
    double lat, double lng, String facilityName, String address, context) {
  return SimpleDialog(
    alignment: Alignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8.0),
        child: SimpleDialogOption(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 32,
                  height: 32,
                  child: ClipRRect(
                      child: Image.asset(
                          'assets/images/icons8-google-maps-144(@3x).png')),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'GoogleMapで開く',
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          onPressed: () {
            _launchUrl(
              // GoogleMap
              'https://www.google.com/maps/search/?api=1&query=$lat,$lng',
            );
            Navigator.pop(context);
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: SimpleDialogOption(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 32,
                    height: 32,
                    child: ClipRRect(
                        child:
                            Image.asset('assets/images/social_yahoo_1974.png')),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Yahooカーナビで開く',
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            onPressed: () {
              _launchUrl(
                // ヤフーカーナビ
                'yjcarnavi://navi/select?lat=$lat&lon=$lng&name=$facilityName',
              );
              Navigator.pop(context);
            }),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: SimpleDialogOption(
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                '住所をコピーする',
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
            ),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: address));
              Navigator.pop(context);
            }),
      ),
    ],
  );
}
