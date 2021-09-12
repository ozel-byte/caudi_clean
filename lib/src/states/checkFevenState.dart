import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckSevenState extends StateNotifier<bool> {
  CheckSevenState() : super(false);

  set setCheckOne(bool value) => state = value;

  get getCheckOne => state;
}
