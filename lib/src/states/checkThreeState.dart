import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckThreeState extends StateNotifier<bool> {
  CheckThreeState() : super(false);

  set setCheckOne(bool value) => state = value;

  get getCheckOne => state;
}
