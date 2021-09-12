import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckFourState extends StateNotifier<bool> {
  CheckFourState() : super(false);

  set setCheckOne(bool value) => state = value;

  get getCheckOne => state;
}
