import 'package:caudiclean/src/pages/viewPageFinal.dart';
import 'package:caudiclean/src/pages/viewPagePasoFour.dart';
import 'package:caudiclean/src/pages/viewPagePasoOne.dart';
import 'package:caudiclean/src/pages/viewPagePasoThree.dart';
import 'package:caudiclean/src/pages/viewPagePasoTwo.dart';
import 'package:flutter/material.dart';
import 'package:caudiclean/src/pages/sliderFive.dart';
import 'package:caudiclean/src/pages/sliderFour.dart';
import 'package:caudiclean/src/pages/sliderOne.dart';
import 'package:caudiclean/src/pages/sliderSix.dart';
import 'package:caudiclean/src/pages/sliderTrhee.dart';
import 'package:caudiclean/src/pages/sliderTwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caudi clean',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => SliderOne(),
        'sliderTwo': (BuildContext context) => SliderTwo(),
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
