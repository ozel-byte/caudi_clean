import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckSixState extends StateNotifier<bool> {
  CheckSixState() : super(false);

  set setCheckOne(bool value) => state = value;

  get getCheckOne => state;
}
