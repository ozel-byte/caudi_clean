import 'package:caudiclean/src/model/username.dart';
import 'package:flutter/material.dart';

class ViewPagePasoOne extends StatelessWidget {
  final _style = new TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  TextEditingController _controllerOne = TextEditingController();
  TextEditingController _controllerTwo = TextEditingController();
  TextEditingController _controllerThree = TextEditingController();
  TextEditingController _controllerFour = TextEditingController();

  String _nameOne = "";
  String _nameTwo = "";
  String _nameThree = "";
  String _nameFour = "";
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
      body: Column(
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
                            "Desabasto",
                            style: _style,
                          ),
                          TextField(
                            controller: _controllerTwo,
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
                  onPressed: () {
                    Navigator.popAndPushNamed(context, 'viewPagePasoTwo',
                        arguments: user);
                  },
                  child: Text(
                    "Siguiente",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          )
        ],
      ),
    );
  }

  validacionPuntos(BuildContext context) {
    if (_nameOne.isNotEmpty &&
        _nameTwo.isNotEmpty &&
        _nameThree.isNotEmpty &&
        _nameFour.isNotEmpty) {
      return Navigator.popAndPushNamed(context, 'viewPagePasoTwo');
    } else {
      return null;
    }
  }
}
