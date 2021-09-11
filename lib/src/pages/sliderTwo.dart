import 'package:flutter/material.dart';

class SliderTwo extends StatefulWidget {
  @override
  _SliderTwoState createState() => _SliderTwoState();
}

int select = 0;

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
          leading: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        body: ListView(
          padding: EdgeInsets.only(top: size.height * 0.1),
          children: [
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
                      child: Image(
                          image: AssetImage("assets/female-mechanic.png")),
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
                                color:
                                    select == 2 ? Colors.green : Colors.white,
                                width: 3))),
                        child: Image(
                            image: AssetImage("assets/male-mechanic.png"))),
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
                  child: Text("Como jugar",
                      style: TextStyle(color: Colors.white))),
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
                    Navigator.popAndPushNamed(context, "slierThree");
                  },
                  child: Text(
                    "Siguiente",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ));
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
