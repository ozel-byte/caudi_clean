import 'package:caudiclean/main.dart';
import 'package:caudiclean/src/model/username.dart';
import 'package:caudiclean/src/states/instanciaUsername.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ViewPageFinal extends ConsumerWidget {
  const ViewPageFinal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final size = MediaQuery.of(context).size;
    InstanciaUsernameState user = watch(instanciaUsernameState.notifier);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
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
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "¡MUY BIEN!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text("¡HAS CONCLUÍDO EL TRATAMIENTO!",
                  style: TextStyle(fontSize: 18)),

              Text("¡VEAMOS QUÉ TAL TE FUE!", style: TextStyle(fontSize: 18)),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    user.puntosValue.toString(),
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffF96E9D)),
                  ),
                  Text("Puntos",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFCACA2))),
                ],
              ),
              // Container(
              //   width: size.width * 1,
              //   height: size.height * 0.5,
              //   child: ListView(
              //     padding: EdgeInsets.only(top: 20),
              //     children: [
              //       ListTile(
              //         leading: Icon(Icons.check_circle),
              //         title: Text(
              //             "Selecciona las palabras relacionadas con el tratamiento secundario."),
              //       ),
              //       ListTile(
              //         leading: Icon(Icons.check_circle),
              //         title: Text(
              //             "Selecciona las palabras relacionadas con el tratamiento secundario."),
              //       )
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff22ADCC))),
                  onPressed: () {
                    context
                        .read(instanciaUsernameState.notifier)
                        .agregarAvatar = "";
                    context.read(instanciaUsernameState.notifier).agregarGnero =
                        "";
                    context
                        .read(instanciaUsernameState.notifier)
                        .agregarUsername = "";

                    final punt = user.puntosValue;
                    context
                        .read(instanciaUsernameState.notifier)
                        .agregarPuntos = -punt;
                    Navigator.popAndPushNamed(context, '/');
                  },
                  child: Text(
                    "Volver a jugar",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
