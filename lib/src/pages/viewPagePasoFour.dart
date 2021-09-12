import 'package:caudiclean/src/model/username.dart';
import 'package:flutter/material.dart';

class ViewPagePasoFour extends StatefulWidget {
  const ViewPagePasoFour({Key? key}) : super(key: key);

  @override
  _ViewPagePasoFourState createState() => _ViewPagePasoFourState();
}

List<String> items = ["Filtración", "Desinfección", "Decantación"];
int selectitem = 0;

class _ViewPagePasoFourState extends State<ViewPagePasoFour> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Username user = ModalRoute.of(context)!.settings.arguments as Username;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          Row(
            children: [
              Text(
                "Ing " + user.getUsername,
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: user.getGenero == "F"
                    ? Colors.amber[100]
                    : Colors.blue[100],
                backgroundImage: AssetImage(user.getAvatar),
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Tratamiento primario",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                "¿Dónde se lleva a cabo?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "Maximo 30 puntos",
                style: TextStyle(color: Colors.red[200]),
              ),
              SizedBox(
                height: 20,
              ),
              DragTarget(
                builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return Container(
                    width: size.width * 0.8,
                    height: size.height * 0.5,
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Draggable<String>(
                          data: items[index] + "." + index.toString(),
                          feedback: Card(
                            child: Container(
                                width: size.width * 0.8,
                                height: size.height * 0.1,
                                child: Center(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.mood_rounded),
                                    Text(items[index]),
                                  ],
                                ))),
                          ),
                          child: Card(
                            child: Container(
                                width: size.width * 0.8,
                                height: size.height * 0.1,
                                child: Center(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.mood_rounded),
                                    Text(items[index]),
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
                  items.removeAt(int.parse(valor[1]));
                  for (var item in items) {
                    itemnew.add(item);
                  }
                  items = itemnew;
                  print(items);
                  setState(() {});
                },
              ),
              TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff22ADCC))),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, 'viewPageFinal',
                        arguments: user);
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
          user.getPuntos.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
