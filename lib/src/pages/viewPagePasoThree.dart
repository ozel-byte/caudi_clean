import 'package:caudiclean/src/model/username.dart';
import 'package:flutter/material.dart';

class ViewPagePasoThree extends StatefulWidget {
  const ViewPagePasoThree({Key? key}) : super(key: key);

  @override
  _ViewPagePasoThreeState createState() => _ViewPagePasoThreeState();
}

class _ViewPagePasoThreeState extends State<ViewPagePasoThree> {
  bool _checkOne = false;
  bool _checkTwo = false;
  bool _checkThree = false;
  bool _checkFour = false;
  bool _checkFive = false;
  bool _checkSix = false;
  bool _checkSeven = false;
  bool _checkEight = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Username user = ModalRoute.of(context)!.settings.arguments as Username;
    return Scaffold(
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
                    children: [
                      CheckboxListTile(
                        title: Text('Bioligico'),
                        value: _checkOne,
                        onChanged: (select) {
                          _checkOne = select!;
                          setState(() {});
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        title: Text('Destilacion'),
                        value: _checkTwo,
                        onChanged: (select) {
                          _checkTwo = select!;
                          setState(() {});
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        title: Text('Disolucion'),
                        value: _checkThree,
                        onChanged: (select) {
                          _checkThree = select!;
                          setState(() {});
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        title: Text('Desengrasado'),
                        value: _checkFour,
                        onChanged: (select) {
                          _checkFour = select!;
                          setState(() {});
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        title: Text('Desarenado'),
                        value: _checkFive,
                        onChanged: (select) {
                          _checkFive = select!;
                          setState(() {});
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        title: Text('Aplicacion de oxigeno'),
                        value: _checkSix,
                        onChanged: (select) {
                          _checkSix = select!;
                          setState(() {});
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        title: Text('Clarificacion'),
                        value: _checkSeven,
                        onChanged: (select) {
                          _checkSeven = select!;
                          setState(() {});
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        title: Text('Sanitizacion'),
                        value: _checkEight,
                        onChanged: (select) {
                          _checkEight = select!;
                          setState(() {});
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ],
                  ),
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
                    onPressed: _checkOne == true ||
                            _checkTwo == true ||
                            _checkThree == true ||
                            _checkFour == true ||
                            _checkFive == true ||
                            _checkSix == true ||
                            _checkSeven ||
                            _checkEight == true
                        ? () {
                            if (_checkOne) {
                              count += 10;
                            }
                            if (_checkSix) {
                              count += 10;
                            }
                            if (_checkSeven) {
                              count += 10;
                            }
                            setState(() {});
                            user.countpuntos = user.getPuntos + count;
                            Navigator.popAndPushNamed(
                                context, 'viewPagePasoFour',
                                arguments: user);
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
          user.getPuntos.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
