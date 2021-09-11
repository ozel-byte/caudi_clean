import 'package:flutter/material.dart';

class SLiderThree extends StatelessWidget {
  const SLiderThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        elevation: 0.0,
        actions: [
          Row(
            children: [
              Text(
                "Ing Ozel",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.amber[200],
                child: Text("O"),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
      body: Container(
        width: size.width * 1,
        height: size.height * 1,
        color: Colors.amber[200],
        child: ListView(
          padding: EdgeInsets.only(top: 50, left: 0),
          children: [
            ListTile(
              title: Text(
                "Instrucciones",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 15)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffE8E6E6))),
                  onPressed: () {},
                  child: Text("Siguiente")),
            )
          ],
        ),
      ),
    );
  }
}
