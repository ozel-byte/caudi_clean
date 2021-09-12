import 'package:caudiclean/src/model/username.dart';
import 'package:flutter/material.dart';

class ViewPagePasoTwo extends StatefulWidget {
  const ViewPagePasoTwo({Key? key}) : super(key: key);

  @override
  _ViewPagePasoTwoState createState() => _ViewPagePasoTwoState();
}

bool? _check = false;
bool? _checkTwo = false;
bool? _checkThree = false;
bool? _checkFour = false;
bool? _checkFive = false;

class _ViewPagePasoTwoState extends State<ViewPagePasoTwo> {
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
              Container(
                width: size.width * 1,
                height: size.height * 0.4,
                child: ListView(
                  padding: EdgeInsets.only(top: 20),
                  children: [
                    CheckboxListTile(
                      title: Text('Licuadora'),
                      value: _check,
                      onChanged: (select) {
                        _check = select;
                        setState(() {});
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      title: Text('Tamiz'),
                      value: _checkTwo,
                      onChanged: (select) {
                        _checkTwo = select;
                        setState(() {});
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      title: Text('Redes finas'),
                      value: _checkThree,
                      onChanged: (select) {
                        _checkThree = select;
                        setState(() {});
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      title: Text('Redes gruesas'),
                      value: _checkFour,
                      onChanged: (select) {
                        _checkFour = select;
                        setState(() {});
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      title: Text('Decantador'),
                      value: _checkFive,
                      onChanged: (select) {
                        _checkFive = select;
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
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff22ADCC))),
                  onPressed: _check == true ||
                          _checkTwo == true ||
                          _checkThree == true ||
                          _checkFour == true ||
                          _checkFive == true
                      ? () {
                          if (_checkFive == true) {
                            user.countpuntos = user.getPuntos + 10;
                          }
                          Navigator.popAndPushNamed(
                              context, 'viewPagePasoThree',
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
