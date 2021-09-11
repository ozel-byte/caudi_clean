import 'package:flutter/material.dart';

class SliderOne extends StatelessWidget {
  final _styleDescription = TextStyle(color: Color(0xffA2A2A4));
  final Shader _gradientLogo = LinearGradient(
          colors: [Color(0xffF76395), Color(0xffFC9C7E)],
          begin: Alignment.centerLeft,
          end: Alignment.bottomRight)
      .createShader(Rect.fromLTWH(0.0, 0.0, 320.0, 80.0));
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [logo(size), botonesInfo(size), wavesAnimation(size)],
      ),
    );
  }

  Widget logo(Size size) {
    return Container(
      width: size.width * 1,
      height: size.height * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Bienvenido",
            style: TextStyle(
                color: Color(0xff2CBCF9),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Caudi clean",
              style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()..shader = _gradientLogo,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Text(
            "Agua Tratada y Limpia",
            style: TextStyle(color: Color(0xff22ADCC)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Proceso de tratamiento de aguas residuales fácil y",
            style: _styleDescription,
          ),
          Text(
            "sencillamente. ¡No esperes más!",
            style: _styleDescription,
          ),
          Text(
            "¡Aprende jugando, diviértete estudiando!",
            style: _styleDescription,
          )
        ],
      ),
    );
  }

  Widget botonesInfo(Size size) {
    return Container(
      width: size.width * 1,
      height: size.height * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffE8E6E6))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.play_arrow),
                    Text("Jugar"),
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffE8E6E6))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.link),
                    Text(" Instituciones de agua"),
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffE8E6E6))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.link),
                    Text(" Marco formativo"),
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffE8E6E6))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bookmarks),
                    Text(" Glosario de tratamiento"),
                  ],
                )),
          )
        ],
      ),
    );
  }

  Widget wavesAnimation(Size size) {
    return Container(
      width: size.width * 1,
      height: size.height * 0.3,
    );
  }
}