import 'package:caudiclean/main.dart';
import 'package:caudiclean/src/model/username.dart';
import 'package:caudiclean/src/states/instanciaUsername.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SLiderThree extends ConsumerWidget {
  const SLiderThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    Size size = MediaQuery.of(context).size;
    InstanciaUsernameState user = watch(instanciaUsernameState.notifier);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.popAndPushNamed(context, 'sliderTwo');
          },
        ),
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
      ),
      body: FadeIn(
        duration: Duration(milliseconds: 2000),
        child: Container(
          width: size.width * 1,
          height: size.height * 1,
          child: ListView(
            padding: EdgeInsets.only(top: 50, left: 0),
            children: [
              ListTile(
                title: Text(
                  "Lista de Tareas",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                ),
                title: Text(
                    "Determina el cuerpo de agua al que se descargarán las aguas residuales."),
              ),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.blue),
                title: Text(
                    "Ordena correctamente los procesos de pretratamiento."),
              ),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.blue),
                title: Text(
                    "Especifica dónde se lleva a cabo el tratamiento primario."),
              ),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.blue),
                title: Text(
                    "Selecciona las palabras relacionadas con el tratamiento secundario."),
              ),
              ListTile(
                leading: Icon(Icons.check_circle, color: Colors.blue),
                title: Text(
                    "Ordena correctamente los procesos del tratamiento terciario."),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: TextButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 15)),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff22ADCC))),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, 'slierFive');
                    },
                    child: Text(
                      "Siguiente",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
