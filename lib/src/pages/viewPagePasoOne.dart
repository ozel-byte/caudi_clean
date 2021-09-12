import 'package:caudiclean/src/model/username.dart';
import 'package:flutter/material.dart';

class ViewPagePasoOne extends StatefulWidget {
  @override
  _ViewPagePasoOneState createState() => _ViewPagePasoOneState();
}

class _ViewPagePasoOneState extends State<ViewPagePasoOne> {
  final _style = new TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  TextEditingController _controllerOne = TextEditingController();

  TextEditingController _controllerTwo = TextEditingController();

  TextEditingController _controllerThree = TextEditingController();

  TextEditingController _controllerFour = TextEditingController();

  String _nameOne = "";

  String _nameTwo = "";

  String _nameThree = "";

  String _nameFour = "";

  int count = 0;

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
          "Paso 1",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Pretratamiento.",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: 20),
            Text(
              "¿Qué va primero?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "Maximo 40 puntos",
              style: TextStyle(color: Colors.red[200]),
            ),
            SizedBox(height: 20),
            Container(
              width: size.width * 1,
              height: size.height * 0.25,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: size.width * 0.33,
                        height: size.height * 0.1,
                        color: Colors.pink[200],
                        child: Column(
                          children: [
                            Text(
                              "Desarenado",
                              style: _style,
                            ),
                            TextField(
                              controller: _controllerOne,
                              onChanged: (value) {
                                _nameOne = value;
                                setState(() {});
                              },
                              decoration: InputDecoration(hintText: 'escribe'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.33,
                        height: size.height * 0.1,
                        color: Colors.orange[200],
                        child: Column(
                          children: [
                            Text(
                              "Desbaste",
                              style: _style,
                            ),
                            TextField(
                              controller: _controllerTwo,
                              onChanged: (value) {
                                _nameTwo = value;
                                setState(() {});
                              },
                              decoration: InputDecoration(hintText: 'escribe'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.33,
                        height: size.height * 0.1,
                        color: Colors.green[200],
                        child: Column(
                          children: [
                            Text(
                              "Tamizado",
                              style: _style,
                            ),
                            TextField(
                              controller: _controllerThree,
                              onChanged: (value) {
                                _nameThree = value;
                                setState(() {});
                              },
                              decoration: InputDecoration(hintText: 'escribe'),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: size.width * 0.43,
                    height: size.height * 0.1,
                    color: Colors.red[100],
                    child: Column(
                      children: [
                        Text(
                          "Desengrasado",
                          style: _style,
                        ),
                        TextField(
                          controller: _controllerFour,
                          onChanged: (value) {
                            _nameFour = value;
                            setState(() {});
                          },
                          decoration: InputDecoration(hintText: 'escribe'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
                    onPressed: _nameOne.length > 0 &&
                            _nameTwo.length > 0 &&
                            _nameThree.length > 0 &&
                            _nameFour.length > 0
                        ? () {
                            print("llego hasta aqui");
                            if (_nameOne == "3") {
                              count += 10;
                              print("entro aqui 1");
                            }
                            if (_nameTwo == "1") {
                              count += 10;
                              print("entro aqui 2");
                            }
                            if (_nameThree == "2") {
                              count += 10;
                              print("entro aqui 3");
                            }
                            if (_nameFour == "4") {
                              count += 10;
                              print("entro aqui 4");
                            }

                            setState(() {});
                            user.countpuntos = count;
                            print(user.getPuntos);
                            Navigator.popAndPushNamed(
                                context, 'viewPagePasoTwo',
                                arguments: user);
                          }
                        : null,
                    child: Text(
                      "Siguiente",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
