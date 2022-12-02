///==================================
/// InnerTabControllerの高さが男湯を基準にしているのでタブごとに高さを設定するようにする。
/// 例）男湯の高さ＜女湯の高さ　の場合、女湯でCardが表示されないエラー発生。
/// カプセルサウナロスコ
///==================================
import 'package:flutter/material.dart';

class InnerTabController extends StatefulWidget {
  final int initailIndex;
  final List<Widget> tabs;
  final List<Widget> bodys;
  final int tebSpaceFlex; // タブを左寄せする場合の割合幅
  final int freeSpaceFlex; // タブを左寄せする場合の右側の割合幅
  const InnerTabController({
    Key? key,
    required this.initailIndex,
    required this.tabs,
    required this.bodys,
    this.tebSpaceFlex = 1,
    this.freeSpaceFlex = 0,
  }) : super(key: key);

  @override
  InnerTabControllerState createState() => InnerTabControllerState();
}

class InnerTabControllerState extends State<InnerTabController>
    with SingleTickerProviderStateMixin {
  // List<GlobalKey> keys = [];
  // List<double?> bodyHeights = [];
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(
        vsync: this,
        length: widget.tabs.length,
        initialIndex: widget.initailIndex);

    // for (int i = 0; i < widget.tabs.length; i++) {
    // bodyHeights.add(null);
    // keys.add(GlobalKey());
    // }
    // SchedulerBinding.instance.addPostFrameCallback((_) {
    //   setState(() {
    //     print("setState");
    //     for (int i = 0; i < widget.tabs.length; i++) {
    //       bodyHeights[i] = keys[i].currentContext?.size?.height;
    //     }
    //     print("bodyHeights:$bodyHeights");
    //   });
    // });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.tabs.length != widget.bodys.length) {
      throw Exception('tabsとbodysとbodySizesの配列の数を同じにして下さい。');
    }
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              flex: widget.tebSpaceFlex,
              child: TabBar(
                controller: tabController,
                tabs: widget.tabs,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
              ),
            ),
            Flexible(
              flex: widget.freeSpaceFlex,
              child: const SizedBox(),
            ),
          ],
        ),
        const Divider(height: 0),
        // if (bodyHeights[tabController.index] == null)
        // Container(
        // key: keys[tabController.index],
        // alignment: Alignment.centerLeft,
        // child: widget.bodys[tabController.index],
        // )
        // else
        SizedBox(
          height: 330,
          child: TabBarView(
            controller: tabController,
            children: widget.bodys,
          ),
        ),
      ],
    );
  }
}
