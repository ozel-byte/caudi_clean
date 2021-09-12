import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectAvatarState extends StateNotifier<int> {
  SelectAvatarState() : super(0);
  set selectedValue(int value) => state = value;
  void selected() => state++;
}
