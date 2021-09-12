import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckEightState extends StateNotifier<bool> {
  CheckEightState() : super(false);

  set setCheckOne(bool value) => state = value;

  get getCheckOne => state;
}
