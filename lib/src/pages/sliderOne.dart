import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:animate_do/animate_do.dart';
import 'package:url_launcher/url_launcher.dart';

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
                onPressed: () {
                  _ventanaInstruciones2(context, size);
                },
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
                onPressed: () {
                  _ventanaInstruciones(context, size);
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffE8E6E6))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.link),
                    Text(" Marco normativo"),
                  ],
                )),
          ),
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

  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  Future<void> _ventanaInstruciones(BuildContext context, Size size) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Marco Normativo"),
            content: Container(
              width: size.width * 1,
              height: size.height * 0.2,
              child: ListView(
                children: [
                  ListTile(
                      leading: Text("1"),
                      trailing: Icon(Icons.link),
                      title: GestureDetector(
                          onTap: () => _launchURL(
                              "http://www.diputados.gob.mx/LeyesBiblio/pdf/148_180121.pdf"),
                          child: Text(
                            "LGEEPA",
                            style: TextStyle(color: Colors.blue),
                          ))),
                  ListTile(
                      leading: Text("2"),
                      trailing: Icon(Icons.link),
                      title: GestureDetector(
                          onTap: () => _launchURL(
                              "http://www.diputados.gob.mx/LeyesBiblio/pdf/16_060120.pdf"),
                          child: Text("Ley de aguas nacionales.",
                              style: TextStyle(color: Colors.blue)))),
                  ListTile(
                      leading: Text("3"),
                      trailing: Icon(Icons.link),
                      title: GestureDetector(
                          onTap: () => _launchURL(
                              "https://www.dof.gob.mx/nota_detalle.php?codigo=5510140&fecha=05/01/2018"),
                          child: Text("NOM-001-SEMARNAT-1996",
                              style: TextStyle(color: Colors.blue)))),
                  ListTile(
                      leading: Text("4"),
                      trailing: Icon(Icons.link),
                      title: GestureDetector(
                          onTap: () => _launchURL(
                              "https://www.profepa.gob.mx/innovaportal/file/3295/1/nom-002-semarnat-1996.pdf"),
                          child: Text("NOM-002-SEMARNAT-1996",
                              style: TextStyle(color: Colors.blue)))),
                  ListTile(
                      leading: Text("4"),
                      trailing: Icon(Icons.link),
                      title: GestureDetector(
                          onTap: () => _launchURL(
                              "https://www.profepa.gob.mx/innovaportal/file/3297/1/nom-003-semarnat-1997.pdf"),
                          child: Text("NOM-003-SEMARNAT-1997",
                              style: TextStyle(color: Colors.blue))))
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

  Future<void> _ventanaInstruciones2(BuildContext context, Size size) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("INSTITUCIONES DEL AGUA"),
            content: Container(
              width: size.width * 1,
              height: size.height * 0.2,
              child: ListView(
                children: [
                  ListTile(
                      leading: Text("1"),
                      trailing: Icon(Icons.link),
                      title: GestureDetector(
                          onTap: () => _launchURL("https://www.gob.mx/conagua"),
                          child: Text(
                            "CONAGUA",
                            style: TextStyle(color: Colors.blue),
                          ))),
                  ListTile(
                      leading: Text("2"),
                      trailing: Icon(Icons.link),
                      title: GestureDetector(
                          onTap: () => _launchURL("https://www.gob.mx/imta"),
                          child: Text("IMTA",
                              style: TextStyle(color: Colors.blue)))),
                  ListTile(
                      leading: Text("3"),
                      trailing: Icon(Icons.link),
                      title: GestureDetector(
                          onTap: () =>
                              _launchURL("https://www.gob.mx/semarnat"),
                          child: Text("SEMARNAT",
                              style: TextStyle(color: Colors.blue)))),
                  ListTile(
                      leading: Text("4"),
                      trailing: Icon(Icons.link),
                      title: GestureDetector(
                          onTap: () => _launchURL("http://amh.org.mx/"),
                          child: Text("AMH",
                              style: TextStyle(color: Colors.blue))))
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
