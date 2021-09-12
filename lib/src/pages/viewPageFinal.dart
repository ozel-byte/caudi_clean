import 'package:caudiclean/src/model/username.dart';
import 'package:flutter/material.dart';

class ViewPageFinal extends StatelessWidget {
  const ViewPageFinal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Username user = ModalRoute.of(context)!.settings.arguments as Username;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
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
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "¡MUY BIEN!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text("¡HAS CONCLUÍDO EL TRATAMIENTO!",
                  style: TextStyle(fontSize: 18)),

              Text("¡VEAMOS QUÉ TAL TE FUE!", style: TextStyle(fontSize: 18)),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    user.getPuntos.toString(),
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffF96E9D)),
                  ),
                  Text("Puntos",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFCACA2))),
                ],
              ),
              // Container(
              //   width: size.width * 1,
              //   height: size.height * 0.5,
              //   child: ListView(
              //     padding: EdgeInsets.only(top: 20),
              //     children: [
              //       ListTile(
              //         leading: Icon(Icons.check_circle),
              //         title: Text(
              //             "Selecciona las palabras relacionadas con el tratamiento secundario."),
              //       ),
              //       ListTile(
              //         leading: Icon(Icons.check_circle),
              //         title: Text(
              //             "Selecciona las palabras relacionadas con el tratamiento secundario."),
              //       )
              //     ],
              //   ),
              // ),
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
                    Navigator.popAndPushNamed(context, '/');
                  },
                  child: Text(
                    "Volver a jugar",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
