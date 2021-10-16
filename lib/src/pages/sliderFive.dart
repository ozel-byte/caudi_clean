import 'package:caudiclean/main.dart';
import 'package:caudiclean/src/model/username.dart';
import 'package:caudiclean/src/states/instanciaUsername.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SLiderFive extends ConsumerWidget {
  const SLiderFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    InstanciaUsernameState user = watch(instanciaUsernameState.notifier);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          CircleAvatar(
            backgroundColor:
                user.generoValue == "F" ? Colors.amber[100] : Colors.blue[100],
            backgroundImage: AssetImage(user.avatarValue),
          ),
          SizedBox(
            width: 10,
          )
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, 'slierThree');
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Hola de nuevo " + user.usernameValue,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage(
                "assets/reshot-illustration-reading-books-ZDLTUEQ9WJ.png"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 12),
                child: Text(
                  "¡RECUERDA ANTES DEL TRATAMIENTO!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Verifica los límites permisibles para  descargas de",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color(0xff7e7b7b)),
                    ),
                    Text(
                      "aguas residuales en la",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color(0xff7e7b7b)),
                    ),
                    Text(
                      "NOM-001-SEMARNAT-2021.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color(0xff7e7b7b)),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 12, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Algunos límites permisibles en",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text("promedio mensual.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16))
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "- Temperatura: 35° C",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff7e7b7b)),
                    ),
                    Text(
                      "- Grasas y Aceites: 15 mg/L",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff7e7b7b)),
                    ),
                    Text(
                      "- Sólidos Suspendidos totales: 60 mg/L",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff7e7b7b)),
                    ),
                    Text(
                      "- Demanda Química de Oxígeno (DQO): 150 mg/L",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff7e7b7b)),
                    ),
                    Text(
                      "- pH: 6-9",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff7e7b7b)),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(children: [
            Container(
                padding: EdgeInsets.only(top: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, "sliderSix");
                        },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 100),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff3dbfe5))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Siguiente",
                              style: TextStyle(
                                  fontSize: 19, color: Color(0xffffffff)),
                            )
                          ],
                        )),
                  ],
                )),
          ])
          //reshot-illustration-reading-books-ZDLTUEQ9WJ.png
        ],
      ),
    );
  }
}
