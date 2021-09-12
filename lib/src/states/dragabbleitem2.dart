import 'package:flutter_riverpod/flutter_riverpod.dart';

class DragabbleItem2 extends StateNotifier<List<String>> {
  DragabbleItem2() : super(["Desinfección", "Decantación", "Filtración"]);

  set itemsArray(List<String> item) {
    state = item;
  }

  get itemsArrayValue => state;
}
