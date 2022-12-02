import 'package:flutter/material.dart';
import 'package:google_place/google_place.dart';
import 'package:googlemap_sample/components/color.dart';
import 'package:googlemap_sample/model/place.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class _SearchedPageState extends State<SearchedPage> {
  late GooglePlace googlePlace;
  List<AutocompletePrediction>? predictions = [];
  List<Place> places = [];

  Future<void> searchLatLng(String txt) async {
    try {
      final result = await googlePlace.autocomplete.get(txt);
      if (result != null) {
        predictions = result.predictions!;
        if (predictions != null) {
          for (AutocompletePrediction prediction in predictions!) {
            googlePlace.details.get(prediction.placeId!).then((value) async {
              if (value != null && value.result != null) {
                setState(() {
                  places.add(Place(
                    name: value.result!.name,
                    address: prediction.description,
                  ));
                });
              }
            });
          }
        }
      }
      if (errorTxt != null) {
        setState(() {
          errorTxt = null;
        });
      }
    } catch (e) {
      print(e);
      setState(() {
        errorTxt = '正しいキーワードを入力してください';
      });
    }
  }

  @override
  void initState() {
    googlePlace = GooglePlace(dotenv.env['GOOGLEMAP_API_KEY'].toString());
    super.initState();
  }

  var errorTxt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: colorWhite,
        elevation: 0.0,
        title: Column(
          children: [
            SizedBox(
              height: 45,
              child: SizedBox.expand(
                child: TextField(
                  autofocus: true,
                  enabled: true,
                  style: const TextStyle(color: colorBlack),
                  maxLines: 1,
                  //決定ボタンを押したときに起動。引数は入力された文字列。
                  onSubmitted: (value) async {
                    searchLatLng(value);
                  },
                  decoration: const InputDecoration(
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
                    labelText: 'キーワード検索',
                    labelStyle: TextStyle(
                      fontSize: 12,
                      color: colorSearchTxt,
                    ),
                  ),
                ),
              ),
            ),

            /// 検索バー未入力の場合：エラーメッセージを表示
            errorTxt == null
                ? Container()
                : Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.white),
                        margin: const EdgeInsets.only(top: 98),
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(errorTxt!))),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: places.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(places[index].address ?? ''),
              onTap: () {
                Navigator.pop(context, places[index]);
              },
            );
          }),
    );
  }
}

class SearchedPage extends StatefulWidget {
  const SearchedPage({Key? key}) : super(key: key);

  @override
  State<SearchedPage> createState() => _SearchedPageState();
}
