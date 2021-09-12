import 'package:caudiclean/main.dart';
import 'package:caudiclean/src/model/username.dart';
import 'package:caudiclean/src/states/instanciaUsername.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ViewPagePasoThree extends ConsumerWidget {
  final items = [
    "Biologico",
    "Destilacion",
    "Disolucion",
    "Desengrasado",
    "Desarenado",
    "Aplicacion de oxigeno",
    "Clarificacion",
    "Sanitizacion"
  ];

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final size = MediaQuery.of(context).size;
    InstanciaUsernameState user = watch(instanciaUsernameState.notifier);
    final checkOne = watch(checkOneState);
    final checkTwo = watch(checkTwoState);
    final checkThree = watch(checkThreeState);
    final checkFour = watch(checkFourState);
    final checkFive = watch(checkFiveState);
    final checkSix = watch(checkSixState);
    final checkSevne = watch(checkSevenState);
    final checkEight = watch(checkEightState);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          Row(
            children: [
              Text(
                "Ing " + user.usernameValue,
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: user.generoValue == "F"
                    ? Colors.amber[100]
                    : Colors.blue[100],
                backgroundImage: AssetImage(user.avatarValue),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
        title: Text(
          "Paso 3",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "Tratamiento secundario",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                  "¿Ya sabes cuáles son las 3 palabras clave?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "Maximo 30 puntos",
                  style: TextStyle(color: Colors.red[200]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width * 1,
                  height: size.height * 0.5,
                  child: ListView(
                      padding: EdgeInsets.only(top: 20),
                      children: listItemCheck(
                          checkOne,
                          checkTwo,
                          checkThree,
                          checkFour,
                          checkFive,
                          checkSix,
                          checkSevne,
                          checkEight,
                          context)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 100, vertical: 20)),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff22ADCC))),
                    onPressed: (checkOne ||
                            checkTwo ||
                            checkThree ||
                            checkFour ||
                            checkFive ||
                            checkSix ||
                            checkSevne ||
                            checkEight)
                        ? () {
                            if (checkOne) {
                              context
                                  .read(instanciaUsernameState.notifier)
                                  .agregarPuntos = 10;
                            }
                            if (checkSix) {
                              context
                                  .read(instanciaUsernameState.notifier)
                                  .agregarPuntos = 10;
                            }
                            if (checkSevne) {
                              context
                                  .read(instanciaUsernameState.notifier)
                                  .agregarPuntos = 10;
                            }
                            context.read(checkOneState.notifier).setCheckOne =
                                false;
                            context.read(checkTwoState.notifier).setCheckOne =
                                false;
                            context.read(checkThreeState.notifier).setCheckOne =
                                false;
                            context.read(checkFourState.notifier).setCheckOne =
                                false;
                            context.read(checkFiveState.notifier).setCheckOne =
                                false;
                            context.read(checkSixState.notifier).setCheckOne =
                                false;
                            context.read(checkSevenState.notifier).setCheckOne =
                                false;
                            context.read(checkEightState.notifier).setCheckOne =
                                false;
                            Navigator.popAndPushNamed(
                                context, 'viewPagePasoFour');
                          }
                        : null,
                    child: Text(
                      "Continuar",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff22ADCC),
        onPressed: () {},
        child: Text(
          user.puntosValue.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }

  List<Widget> listItemCheck(
      final checkOne,
      final checkTwo,
      final checkThree,
      final checkFour,
      final checkFive,
      final checkSix,
      final checkSevne,
      final checkEight,
      BuildContext context) {
    List<Widget> item = [];
    for (var i = 0; i < items.length; i++) {
      Widget widget;
      switch (i) {
        case 0:
          widget = CheckboxListTile(
              title: Text(items[i]),
              value: checkOne,
              onChanged: (value) {
                context.read(checkOneState.notifier).setCheckOne = value!;
              });
          item.add(widget);
          break;
        case 1:
          widget = CheckboxListTile(
              title: Text(items[i]),
              value: checkTwo,
              onChanged: (value) {
                context.read(checkTwoState.notifier).setCheckOne = value!;
              });
          item.add(widget);
          break;
        case 2:
          widget = CheckboxListTile(
              title: Text(items[i]),
              value: checkThree,
              onChanged: (value) {
                context.read(checkThreeState.notifier).setCheckOne = value!;
              });
          item.add(widget);
          break;
        case 3:
          widget = CheckboxListTile(
              title: Text(items[i]),
              value: checkFour,
              onChanged: (value) {
                context.read(checkFourState.notifier).setCheckOne = value!;
              });
          item.add(widget);
          break;
        case 4:
          widget = CheckboxListTile(
              title: Text(items[i]),
              value: checkFive,
              onChanged: (value) {
                context.read(checkFiveState.notifier).setCheckOne = value!;
              });
          item.add(widget);
          break;
        case 5:
          widget = CheckboxListTile(
              title: Text(items[i]),
              value: checkSix,
              onChanged: (value) {
                context.read(checkSixState.notifier).setCheckOne = value!;
              });
          item.add(widget);
          break;
        case 6:
          widget = CheckboxListTile(
              title: Text(items[i]),
              value: checkSevne,
              onChanged: (value) {
                context.read(checkSevenState.notifier).setCheckOne = value!;
              });
          item.add(widget);
          break;
        case 7:
          widget = CheckboxListTile(
              title: Text(items[i]),
              value: checkEight,
              onChanged: (value) {
                context.read(checkEightState.notifier).setCheckOne = value!;
              });
          item.add(widget);
          break;
        default:
      }
    }
    return item;
  }
}
