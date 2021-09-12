import 'package:flutter_riverpod/flutter_riverpod.dart';

class DragabbleItemListState extends StateNotifier<List<String>> {
  DragabbleItemListState()
      : super(["Desarenado", "Desbaste", "Tamizado", "Desengrasado"]);

  set itemsArray(List<String> item) {
    state = item;
  }

  get itemsArrayValue => state;
}
