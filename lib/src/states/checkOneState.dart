import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckOneState extends StateNotifier<bool> {
  CheckOneState() : super(false);

  set setCheckOne(bool value) => state = value;

  get getCheckOne => state;
}
