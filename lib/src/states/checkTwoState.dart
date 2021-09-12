import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckTwoState extends StateNotifier<bool> {
  CheckTwoState() : super(false);

  set setCheckOne(bool value) => state = value;

  get getCheckOne => state;
}
