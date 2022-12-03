# サウナマップ

個人開発しているサウナマップアプリについて。ファイル内のデモ動画をご覧ください。
![saunamap_img_1](https://user-images.githubusercontent.com/50776559/205433227-b82993bf-2c88-44e9-9075-b5890fc52793.jpg width="200")![saunamap_img_2](https://user-images.githubusercontent.com/50776559/205433233-31e75bc3-a1f7-480b-9608-826d605d5db4.jpg width="200")![saunamap_img_3](https://user-images.githubusercontent.com/50776559/205433235-2afab4a9-71ef-4788-9324-2f6a5289767a.png width="200")![saunamap_img_4](https://user-images.githubusercontent.com/50776559/205433238-15e606ab-de45-4acc-a07d-a2d9356aba15.png width="200")

## コンセプト

人気のサウナが一目でわかるマップアプリ

## プロダクト

- 全国約1万件のサウナ施設をマップ上に表示
- 人気のサウナが視覚的に分かる
- サウナ施設の評価ができる（未実装）
- シンプルで操作しやすい

### 評価について

- 全体を100.0点満点で評価
- 項目（サウナ、水風呂、外気浴、清潔感）ごとを5段階（0.0~5.0）で評価
- 項目ごとの点数（最大5.0点）×5→全体評価（最大100.0点）が自動的に算出

## ターゲット

- 男性
- 20−30代
- サウナ週1回以上利用者
- 周辺のサウナが知りたい
- 人気のサウナが知りたい

## 使用技術

- 言語：Dart
- フレームワーク：Flutter
- バックエンド：Firebase
- データベース：SQLite
- データ収集（スクレイピング）：Python

### サポート

- IOS
- Android

## 機能

- マップ上にサウナ施設をピンで表示
- 現在地表示
- ピンを評価指数で色分け（赤（上位10％）>紫（上位20％）>緑（それ以下））
- 地名検索

## アプリを開発した理由

私はサウナが趣味で、週1回ほど通うサウナーです。サウナライフを送る中でマップで人気のサウナを探せたらいいなと感じていました。サウナ施設情報をまとめたサイトやマップアプリは存在しますが、**評価や興味度が視覚的にわかるアプリはないので差別化になる**と考え、全国のサウナーがより充実したサウナライフを送ることができるのではという思いからアプリを制作しました。

## Flutterを採用した理由

まずIOSとAndroid双方のプラットフォームでリリースを考えた際に、同一コードで開発することができるクロスプラットフォームに対応した言語での開発を考えました。代表例としてXamarin、React Native、Kotlin Native、Flutterなどが挙げられますが、Java、JavaScriptの経験があるので記法が似ていること、どうせ新しく勉強するなら最先端の技術を身につけたいという考えからFlutterは有力な候補です。また、UIを動的に確認しながら開発できるので開発スピードを上げることができます。そしてDartはオブジェクト指向言語であること、動的型付け、静的型付けのどちらにも対応しているので、コンパイル時にエラーが出るので不具合が起きたときに対処しやすくパフォーマンスの向上が狙えると考えたからです。以上3点がFlutterを採用した理由です。

## 目標

- サウナ探すなら「サウナマップ」と言われるようなサービスにしたい
- 10万ダウンロード
- 利益：200万（サウナの建設費）
