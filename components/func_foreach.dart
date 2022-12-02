import 'package:tuple/tuple.dart';

/// Wight内にfor Each
/// Tuple3 に index をつける
extension IterableExtension<S, T> on List<Tuple3> {
  List<Tuple4<int, String, String, List>> get withIndex {
    final list = <Tuple4<int, String, String, List>>[];
    asMap().forEach((index, element) {
      list.add(Tuple4(index, element.item1, element.item2, element.item3));
    });
    return list;
  }
}
