import 'package:caudiclean/src/model/username.dart';
import 'package:flutter/material.dart';

class ViewPagePasoThree extends StatefulWidget {
  const ViewPagePasoThree({Key? key}) : super(key: key);

  @override
  _ViewPagePasoThreeState createState() => _ViewPagePasoThreeState();
}

class _ViewPagePasoThreeState extends State<ViewPagePasoThree> {
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
                      value: false,
                      onChanged: (select) {
                        setState(() {});
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      title: Text('Destilacion'),
                      value: false,
                      onChanged: (select) {
                        setState(() {});
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      title: Text('Disolucion'),
                      value: false,
                      onChanged: (select) {
                        setState(() {});
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      title: Text('Desengrasado'),
                      value: false,
                      onChanged: (select) {
                        setState(() {});
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      title: Text('Desarenado'),
                      value: false,
                      onChanged: (select) {
                        setState(() {});
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      title: Text('Aplicacion de oxigeno'),
                      value: false,
                      onChanged: (select) {
                        setState(() {});
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      title: Text('Clarificacion'),
                      value: false,
                      onChanged: (select) {
                        setState(() {});
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      title: Text('Sanitizacion'),
                      value: false,
                      onChanged: (select) {
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
                  onPressed: () {
                    Navigator.popAndPushNamed(context, 'viewPagePasoFour',
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
    );
  }
}
