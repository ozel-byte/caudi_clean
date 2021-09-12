import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsernameState extends StateNotifier<String> {
  UsernameState() : super("");
  set usernameValue(String value) => state = value;
}
