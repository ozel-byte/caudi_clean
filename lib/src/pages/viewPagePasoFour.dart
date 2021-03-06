import 'package:caudiclean/main.dart';
import 'package:caudiclean/src/model/username.dart';
import 'package:caudiclean/src/states/instanciaUsername.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ViewPagePasoFour extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final size = MediaQuery.of(context).size;
    InstanciaUsernameState user = watch(instanciaUsernameState.notifier);
    final dragabbleItem = watch(dragabbleItem2State);
    return Scaffold(
      backgroundColor: Colors.white,
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
          "Paso 4",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        /*leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.popAndPushNamed(context, 'viewPagePasoThree');
          },
        ),*/
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Tratamiento terciario.",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text(
                    "Ordena los procesos antes de que termine",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "el tratamiento secundario.",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ordena las Tarjetas",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Maximo 30 puntos",
                        style: TextStyle(color: Colors.red[200]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  dragabbleItemList(size, dragabbleItem, context),
                  TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 20)),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff22ADCC))),
                      onPressed: () {
                        if (dragabbleItem[0] == "Decantaci??n") {
                          context
                              .read(instanciaUsernameState.notifier)
                              .agregarPuntos = 10;
                        }
                        if (dragabbleItem[1] == "Filtraci??n") {
                          context
                              .read(instanciaUsernameState.notifier)
                              .agregarPuntos = 10;
                        }
                        if (dragabbleItem[2] == "Desinfecci??n") {
                          context
                              .read(instanciaUsernameState.notifier)
                              .agregarPuntos = 10;
                        }

                        Navigator.popAndPushNamed(context, 'viewPageFinal');
                      },
                      // onPressed: () {
                      //   if (items[0] == "Decantaci??n") {
                      //     count += 10;
                      //   }
                      //   if (items[1] == "Filtraci??n") {
                      //     count += 10;
                      //   }
                      //   if (items[2] == "Desinfecci??n") {
                      //     count += 10;
                      //   }
                      //   user.countpuntos = user.getPuntos + count;
                      //   setState(() {});
                      //   Navigator.popAndPushNamed(context, 'viewPageFinal',
                      //       arguments: user);
                      // },
                      child: Text(
                        "Continuar",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ],
          )
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

  Widget dragabbleItemList(
      Size size, List<String> dragabbleItem, BuildContext context) {
    return DragTarget(
      builder: (
        BuildContext context,
        List<dynamic> accepted,
        List<dynamic> rejected,
      ) {
        return Container(
          width: size.width * 0.8,
          height: size.height * 0.5,
          child: ListView.builder(
            itemCount: dragabbleItem.length,
            itemBuilder: (context, index) {
              return Draggable<String>(
                data: dragabbleItem[index] + "." + index.toString(),
                feedback: Card(
                  child: Container(
                      width: size.width * 0.8,
                      height: size.height * 0.1,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                          Text(dragabbleItem[index]),
                        ],
                      ))),
                ),
                child: Card(
                  child: Container(
                      width: size.width * 0.8,
                      height: size.height * 0.1,
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.format_list_bulleted),
                          Text(dragabbleItem[index]),
                        ],
                      ))),
                ),
              );
            },
          ),
        );
      },
      onAccept: (String data) {
        final valor = data.split(".");
        print(valor[0]);
        print(valor[1]);

        List<String> itemnew = [];
        itemnew.add(valor[0]);
        print(valor[1]);
        dragabbleItem.removeAt(int.parse(valor[1]));
        for (var item in dragabbleItem) {
          itemnew.add(item);
        }
        context.read(dragabbleItem2State.notifier).itemsArray = itemnew;
      },
    );
  }
}
