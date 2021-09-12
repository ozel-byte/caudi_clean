import 'package:caudiclean/main.dart';
import 'package:caudiclean/src/model/username.dart';
import 'package:caudiclean/src/states/instanciaUsername.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ViewPagePasoTwo extends ConsumerWidget {
  final items = [
    "Licuadora",
    "Tamiz",
    "Redes finas",
    "Redes gruesas",
    "Decantador"
  ];
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final size = MediaQuery.of(context).size;
    InstanciaUsernameState user = watch(instanciaUsernameState.notifier);
    final checkPasoTwo = watch(checkPasoTwoValueState);
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
          "Paso 2",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.popAndPushNamed(context, 'viewPagePasoThree');
          },
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                "Tratamiento primario",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                "¿Dónde se lleva a cabo?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "Maximo 10 puntos",
                style: TextStyle(color: Colors.red[200]),
              ),
              Container(
                width: size.width * 1,
                height: size.height * 0.4,
                child: ListView(
                    padding: EdgeInsets.only(top: 20),
                    children: listaRadioButton(checkPasoTwo, context)),
              ),
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
                    print(checkPasoTwo);
                    if (checkPasoTwo == 5) {
                      context
                          .read(instanciaUsernameState.notifier)
                          .agregarPuntos = 10;
                    }
                    context
                        .read(checkPasoTwoValueState.notifier)
                        .agregarRadiocheckValue = -1;
                    Navigator.popAndPushNamed(context, 'viewPagePasoThree');
                  },
                  child: Text(
                    "Continuar",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ],
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

  List<Widget> listaRadioButton(int checkPasoTwoValue, BuildContext context) {
    List<Widget> item = [];

    for (var i = 0; i < items.length; i++) {
      final widtgetTemporal = ListTile(
        title: Text(items[i]),
        leading: Radio(
          value: (i + 1),
          activeColor: Colors.blue,
          groupValue: checkPasoTwoValue,
          onChanged: (select) {
            context
                .read(checkPasoTwoValueState.notifier)
                .agregarRadiocheckValue = int.parse(select.toString());
          },
        ),
      );
      item.add(widtgetTemporal);
    }
    return item;
  }
}
