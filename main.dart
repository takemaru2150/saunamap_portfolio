import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:googlemap_sample/model/theme.dart';
import 'package:googlemap_sample/screen/base_tab_view.dart';
import 'package:provider/provider.dart';

void main() async {
  // 画面固定
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await dotenv.load(fileName: "assets/.env");

  /// レイアウト構成を見ながら作業ができる Visual Debugging 設定
  // debugPaintSizeEnabled = true;
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _App createState() => _App();
}

class _App extends State<App> {
  @override
  Widget build(BuildContext context) {
    print("main.dart ビルド-完了");

    return ScreenUtilInit(

        /// iPhone14の液晶サイズ基準
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return ChangeNotifierProvider(
            create: (_) => MyTheme(),
            child: Consumer<MyTheme>(
              builder: (context, theme, _) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: theme.current,
                  home: const BaseTabView(),
                );
              },
            ),
          );
        });
  }
}
