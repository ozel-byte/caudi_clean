import 'package:caudiclean/main.dart';
import 'package:caudiclean/src/model/username.dart';
import 'package:caudiclean/src/states/instanciaUsername.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ViewPagePasoOne extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final size = MediaQuery.of(context).size;
    InstanciaUsernameState user = watch(instanciaUsernameState.notifier);
    final dragabbleItem = watch(dragabbleItemsState);
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
            "Paso 1",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.popAndPushNamed(context, 'sliderTwo');
            },
          ),
        ),
        body: listaExpanded(size, dragabbleItem, context, user));
  }

  Widget listaExpanded(Size size, List<String> dragabbleItem,
      BuildContext context, InstanciaUsernameState user) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Pretratamiento.",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Ordena las Tarjetas",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "Maximo 40 puntos",
                  style: TextStyle(color: Colors.red[200]),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "¿Qué va primero?",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            dragabbleItemList(size, dragabbleItem, context),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 80, vertical: 20)),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff22ADCC))),
                    onPressed: () {
                      if (dragabbleItem[0] == "Desbaste")
                        context
                            .read(instanciaUsernameState.notifier)
                            .agregarPuntos = 10;
                      if (dragabbleItem[1] == "Tamizado")
                        context
                            .read(instanciaUsernameState.notifier)
                            .agregarPuntos = 10;
                      if (dragabbleItem[2] == "Desarenado")
                        context
                            .read(instanciaUsernameState.notifier)
                            .agregarPuntos = 10;
                      if (dragabbleItem[3] == "Desengrasado")
                        context
                            .read(instanciaUsernameState.notifier)
                            .agregarPuntos = 10;

                      Navigator.popAndPushNamed(context, "viewPagePasoTwo");
                    },
                    child: Text(
                      "Siguiente",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )
          ],
        ),
      ],
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
        context.read(dragabbleItemsState.notifier).itemsArray = itemnew;
      },
    );
  }

// class ViewPagePasoOne extends StatefulWidget {
//   @override
//   _ViewPagePasoOneState createState() => _ViewPagePasoOneState();
// }

// class _ViewPagePasoOneState extends State<ViewPagePasoOne> {
//   final _style = new TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

//   TextEditingController _controllerOne = TextEditingController();

//   TextEditingController _controllerTwo = TextEditingController();

//   TextEditingController _controllerThree = TextEditingController();

//   TextEditingController _controllerFour = TextEditingController();

//   String _nameOne = "";

//   String _nameTwo = "";

//   String _nameThree = "";

//   String _nameFour = "";

//   int count = 0;

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           elevation: 0.0,
//           actions: [
//             Row(
//               children: [
//                 Text(
//                   "Ing " + user.getUsername,
//                   style: TextStyle(color: Colors.black),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 CircleAvatar(
//                   backgroundColor: user.getGenero == "F"
//                       ? Colors.amber[100]
//                       : Colors.blue[100],
//                   backgroundImage: AssetImage(user.getAvatar),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//               ],
//             )
//           ],
//           title: Text(
//             "Paso 1",
//             style: TextStyle(color: Colors.black),
//           ),
//           backgroundColor: Colors.white,
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back, color: Colors.black),
//             onPressed: () {},
//           ),
//         ),
//         body: ListView(
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 SizedBox(height: 20),
//                 Text(
//                   "Pretratamiento.",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   "¿Qué va primero?",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                 ),
//                 Text(
//                   "Maximo 40 puntos",
//                   style: TextStyle(color: Colors.red[200]),
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   width: size.width * 1,
//                   height: size.height * 0.25,
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Container(
//                             width: size.width * 0.33,
//                             height: size.height * 0.1,
//                             child: Column(
//                               children: [
//                                 Text(
//                                   "Desarenado",
//                                   style: _style,
//                                 ),
//                                 TextField(
//                                   controller: _controllerOne,
//                                   onChanged: (value) {
//                                     _nameOne = value;
//                                     setState(() {});
//                                   },
//                                   decoration:
//                                       InputDecoration(hintText: 'escribe'),
//                                 )
//                               ],
//                             ),
//                           ),
//                           Container(
//                             width: size.width * 0.33,
//                             height: size.height * 0.1,
//                             child: Column(
//                               children: [
//                                 Text(
//                                   "Desbaste",
//                                   style: _style,
//                                 ),
//                                 TextField(
//                                   controller: _controllerTwo,
//                                   onChanged: (value) {
//                                     _nameTwo = value;
//                                     setState(() {});
//                                   },
//                                   decoration:
//                                       InputDecoration(hintText: 'escribe'),
//                                 )
//                               ],
//                             ),
//                           ),
//                           Container(
//                             width: size.width * 0.33,
//                             height: size.height * 0.1,
//                             child: Column(
//                               children: [
//                                 Text(
//                                   "Tamizado",
//                                   style: _style,
//                                 ),
//                                 TextField(
//                                   controller: _controllerThree,
//                                   onChanged: (value) {
//                                     _nameThree = value;
//                                     setState(() {});
//                                   },
//                                   decoration:
//                                       InputDecoration(hintText: 'escribe'),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Container(
//                         width: size.width * 0.43,
//                         height: size.height * 0.1,
//                         child: Column(
//                           children: [
//                             Text(
//                               "Desengrasado",
//                               style: _style,
//                             ),
//                             TextField(
//                               controller: _controllerFour,
//                               onChanged: (value) {
//                                 _nameFour = value;
//                                 setState(() {});
//                               },
//                               decoration: InputDecoration(hintText: 'escribe'),
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     TextButton(
//                         style: ButtonStyle(
//                             padding: MaterialStateProperty.all(
//                                 EdgeInsets.symmetric(
//                                     horizontal: 80, vertical: 20)),
//                             backgroundColor:
//                                 MaterialStateProperty.all(Color(0xff22ADCC))),
//                         onPressed: _nameOne.length > 0 &&
//                                 _nameTwo.length > 0 &&
//                                 _nameThree.length > 0 &&
//                                 _nameFour.length > 0
//                             ? () {
//                                 print("llego hasta aqui");
//                                 if (_nameOne == "3") {
//                                   count += 10;
//                                   print("entro aqui 1");
//                                 }
//                                 if (_nameTwo == "1") {
//                                   count += 10;
//                                   print("entro aqui 2");
//                                 }
//                                 if (_nameThree == "2") {
//                                   count += 10;
//                                   print("entro aqui 3");
//                                 }
//                                 if (_nameFour == "4") {
//                                   count += 10;
//                                   print("entro aqui 4");
//                                 }

//                                 setState(() {});
//                                 user.countpuntos = count;
//                                 print(user.getPuntos);
//                                 Navigator.popAndPushNamed(
//                                     context, 'viewPagePasoTwo',
//                                     arguments: user);
//                               }
//                             : null,
//                         child: Text(
//                           "Siguiente",
//                           style: TextStyle(color: Colors.white),
//                         ))
//                   ],
//                 )
//               ],
//             ),
//           ],
//         ));
//   }
// }
}
