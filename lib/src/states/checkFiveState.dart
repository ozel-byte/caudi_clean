import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckFiveState extends StateNotifier<bool> {
  CheckFiveState() : super(false);

  set setCheckOne(bool value) => state = value;

  get getCheckOne => state;
}
