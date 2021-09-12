import 'package:caudiclean/src/model/username.dart';
import 'package:flutter/material.dart';

class SliderTwo extends StatefulWidget {
  @override
  _SliderTwoState createState() => _SliderTwoState();
}

TextEditingController _controller = TextEditingController();
String username = "";
int select = 0;
Icon iconInicio = Icon(Icons.arrow_forward);

class _SliderTwoState extends State<SliderTwo> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Elige un Asesor",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/');
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: size.height * 0.1),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back),
              Icon(Icons.arrow_forward),
            ],
          ),
          Container(
            width: size.width * 1,
            height: size.height * 0.2,
            child: PageView(
              children: [
                GestureDetector(
                  onTap: () {
                    select = 1;
                    setState(() {});
                  },
                  child: Container(
                    width: size.width * 1,
                    height: size.height * 1,
                    decoration: BoxDecoration(
                        border: Border.fromBorderSide(BorderSide(
                            color: select == 1 ? Colors.blue : Colors.white,
                            width: 3))),
                    child:
                        Image(image: AssetImage("assets/female-mechanic.png")),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    select = 2;
                    setState(() {});
                  },
                  child: Container(
                    width: size.width * 1,
                    height: size.height * 1,
                    decoration: BoxDecoration(
                        border: Border.fromBorderSide(BorderSide(
                            color: select == 2 ? Colors.green : Colors.white,
                            width: 3))),
                    child: Image(image: AssetImage("assets/male-mechanic.png")),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              controller: _controller,
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  labelText: 'Nombre',
                  hintText: 'Ingrese su nombre'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff22ADCC))),
                onPressed: () {
                  _ventanaInstruciones(context, size);
                },
                child:
                    Text("Como jugar", style: TextStyle(color: Colors.white))),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff22ADCC))),
                onPressed: username.isEmpty == true || select == 0
                    ? null
                    : () {
                        String avatar = select == 1
                            ? "assets/female-mechanic.png"
                            : "assets/male-mechanic.png";
                        String genero = select == 1 ? "F" : "M";
                        Username user =
                            new Username(username, 0, avatar, genero);
                        Navigator.popAndPushNamed(context, "slierThree",
                            arguments: user);
                      },
                child: Text(
                  "Siguiente",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }

  Future<void> _ventanaInstruciones(BuildContext context, Size size) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Instrucciones"),
            content: Container(
              width: size.width * 1,
              height: size.height * 0.3,
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                    ),
                    title: Text("Te asignaré una lista de tareas."),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle, color: Colors.blue),
                    title: Text(
                        "Realiza las tareas correctamente para obtener un agua tratada y limpia. De no ser así, pierdes el juego."),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle, color: Colors.blue),
                    title: Text(
                        "Podrás ver tus resultados al finalizar el tratamiento."),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Aceptar'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
