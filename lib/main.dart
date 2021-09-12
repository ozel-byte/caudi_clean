import 'package:caudiclean/src/model/username.dart';
import 'package:caudiclean/src/pages/viewPageFinal.dart';
import 'package:caudiclean/src/pages/viewPagePasoFour.dart';
import 'package:caudiclean/src/pages/viewPagePasoOne.dart';
import 'package:caudiclean/src/pages/viewPagePasoThree.dart';
import 'package:caudiclean/src/pages/viewPagePasoTwo.dart';
import 'package:caudiclean/src/states/checkBoxPasoThreeState.dart';
import 'package:caudiclean/src/states/checkEightState.dart';
import 'package:caudiclean/src/states/checkFevenState.dart';
import 'package:caudiclean/src/states/checkFiveState.dart';
import 'package:caudiclean/src/states/checkFourState.dart';
import 'package:caudiclean/src/states/checkOneState.dart';
import 'package:caudiclean/src/states/checkPasoTwoState.dart';
import 'package:caudiclean/src/states/checkSixState.dart';
import 'package:caudiclean/src/states/checkThreeState.dart';
import 'package:caudiclean/src/states/checkTwoState.dart';
import 'package:caudiclean/src/states/dragabbleItemState.dart';
import 'package:caudiclean/src/states/dragabbleitem2.dart';
import 'package:caudiclean/src/states/instanciaUsername.dart';
import 'package:caudiclean/src/states/selectAvatarState.dart';
import 'package:caudiclean/src/states/usernameState.dart';
import 'package:flutter/material.dart';
import 'package:caudiclean/src/pages/sliderFive.dart';
import 'package:caudiclean/src/pages/sliderFour.dart';
import 'package:caudiclean/src/pages/sliderOne.dart';
import 'package:caudiclean/src/pages/sliderSix.dart';
import 'package:caudiclean/src/pages/sliderTrhee.dart';
import 'package:caudiclean/src/pages/sliderTwo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(ProviderScope(child: MyApp()));

final instanciaUsernameState =
    StateNotifierProvider<InstanciaUsernameState, Username>(
        (ref) => InstanciaUsernameState());
final selectedAvatarState =
    StateNotifierProvider<SelectAvatarState, int>((ref) => SelectAvatarState());

final usernameState =
    StateNotifierProvider<UsernameState, String>((ref) => UsernameState());

final dragabbleItemsState =
    StateNotifierProvider<DragabbleItemListState, List<String>>(
        (ref) => DragabbleItemListState());

final checkPasoTwoValueState =
    StateNotifierProvider<CheckPasoTwoState, int>((ref) => CheckPasoTwoState());

final checkBoxPasoThreeState =
    StateNotifierProvider<CheckBoxPasoThreeState, bool>(
        (ref) => CheckBoxPasoThreeState());
final dragabbleItem2State = StateNotifierProvider((ref) => DragabbleItem2());

final checkOneState = StateNotifierProvider((ref) => CheckOneState());
final checkTwoState = StateNotifierProvider((ref) => CheckTwoState());
final checkThreeState = StateNotifierProvider((ref) => CheckThreeState());
final checkFourState = StateNotifierProvider((ref) => CheckFourState());
final checkFiveState = StateNotifierProvider((ref) => CheckFiveState());
final checkSixState = StateNotifierProvider((ref) => CheckSixState());
final checkSevenState = StateNotifierProvider((ref) => CheckSevenState());
final checkEightState = StateNotifierProvider((ref) => CheckEightState());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caudi clean',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => SliderOne(),
        'sliderTwo': (BuildContext context) => SliderTwoV2(title: "SliderTwo"),
        'slierThree': (BuildContext context) => SLiderThree(),
        'slierFour': (BuildContext context) => SliderFour(),
        'slierFive': (BuildContext context) => SLiderFive(),
        'sliderSix': (BuildContext context) => SliderSix(),
        'viewPagePasoOne': (BuildContext context) => ViewPagePasoOne(),
        'viewPagePasoTwo': (BuildContext context) => ViewPagePasoTwo(),
        'viewPagePasoThree': (BuildContext context) => ViewPagePasoThree(),
        'viewPagePasoFour': (BuildContext context) => ViewPagePasoFour(),
        'viewPageFinal': (BuildContext context) => ViewPageFinal()
      },
    );
  }
}
