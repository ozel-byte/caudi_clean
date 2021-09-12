import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:animate_do/animate_do.dart';

class SliderOne extends StatefulWidget {
  @override
  _SliderOneState createState() => _SliderOneState();
}

class _SliderOneState extends State<SliderOne> {
  final _styleDescription = TextStyle(color: Color(0xffA2A2A4));
  @override
  void initState() {
    super.initState();
  }

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
        children: [
          logo(size),
          botonesInfo(size, context),
          wavesAnimation(size)
        ],
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
          BounceInDown(
            child: Text(
              "Bienvenido",
              style: TextStyle(
                  color: Color(0xff2CBCF9),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FadeIn(
            duration: Duration(milliseconds: 2000),
            child: Text("Caudi clean",
                style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()..shader = _gradientLogo,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Tratamiento de aguas residuales facil y divertido.",
            style: TextStyle(color: Color(0xff22ADCC)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "!Aprende jugando, diviertete estudiando!",
            style: _styleDescription,
          ),
        ],
      ),
    );
  }

  Widget botonesInfo(Size size, BuildContext context) {
    return Container(
      width: size.width * 1,
      height: size.height * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: TextButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'instrucciones');
                },
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

  Widget institucionesAgua() {
    return Container();
  }

  Widget wavesAnimation(Size size) {
    return Container(
      width: size.width * 1,
      height: size.height * 0.3,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          WaveWidget(
              config: CustomConfig(
                gradients: [
                  [Colors.blue, Color(0xff2BA5C0)],
                  [Colors.blue, Color(0xff2FB0CC)],
                  [Colors.blue, Color(0xff048cc0)],
                  [Colors.blue, Color(0xff32ACD8)]
                ],
                durations: [5000, 59440, 50800, 4000],
                heightPercentages: [0.20, 0.23, 0.25, 0.30],
                blur: MaskFilter.blur(BlurStyle.solid, 5),
                gradientBegin: Alignment.bottomLeft,
                gradientEnd: Alignment.topRight,
              ),
              size: Size(size.width * 1, size.height * 0.1))
        ],
      ),
    );
  }
}
