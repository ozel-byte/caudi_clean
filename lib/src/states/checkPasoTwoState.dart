import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckPasoTwoState extends StateNotifier<int> {
  CheckPasoTwoState() : super(0);

  set agregarRadiocheckValue(int value) => state = value;

  get radioCheckValue => state;
}
