import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:video_player/video_player.dart';

class InstruccionesPage extends StatefulWidget {
  const InstruccionesPage({Key? key}) : super(key: key);

  @override
  _InstruccionesPageState createState() => _InstruccionesPageState();
}

class _InstruccionesPageState extends State<InstruccionesPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network(
        "https://res.cloudinary.com/dv5fwf13g/video/upload/v1631495123/v_tzlv0j.mp4")
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.3,
        leading: IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/');
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {
                _controller.pause();
                Navigator.popAndPushNamed(context, 'sliderTwo');
              },
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        title: Text("Definiciones", style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        children: [
          Container(
            width: size.width * 1,
            height: size.height * 1,
            child: Column(
              children: [
                Container(
                  width: size.width * 1,
                  height: size.height * 0.25,
                  color: Colors.black,
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : Center(child: CircularProgressIndicator()),
                ),
                Container(
                  width: size.width * 1,
                  height: size.height * 0.6452,
                  child: ListView(
                    padding: EdgeInsets.only(top: 20),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SlideInLeft(
                                duration: Duration(milliseconds: 1500),
                                child: Card(
                                  elevation: 1,
                                  shadowColor: Colors.grey,
                                  child: Container(
                                    width: size.width * 0.9,
                                    height: size.height * 0.3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: size.width * 1,
                                          height: size.height * 0.15,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://images.pexels.com/photos/6121994/pexels-photo-6121994.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                                          )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: Text(
                                            "Aguas residuales.",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              "Aguas con impurezas procedentes de vertidos de diferentes orígenes, domésticos, industriales, agrícolas y pecuarios"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SlideInRight(
                                duration: Duration(milliseconds: 1500),
                                child: Card(
                                  child: Container(
                                    width: size.width * 0.9,
                                    height: size.height * 0.3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: size.width * 1,
                                          height: size.height * 0.15,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://images.pexels.com/photos/2480806/pexels-photo-2480806.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                                          )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: Text(
                                            "Pretratamiento",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              "Remoción física de sólidos grandes, arenas, grasas y aceites contenidas en el agua residual."),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SlideInLeft(
                                duration: Duration(milliseconds: 1500),
                                child: Card(
                                  child: Container(
                                    width: size.width * 0.9,
                                    height: size.height * 0.3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: size.width * 1,
                                          height: size.height * 0.15,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://images.pexels.com/photos/532006/pexels-photo-532006.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                                          )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: Text(
                                            "Tratamiento primario.",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              "Remoción de sólidos suspendidos en el agua residual, mediante sedimentación gravitatoria."),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SlideInRight(
                                duration: Duration(milliseconds: 1500),
                                child: Card(
                                  child: Container(
                                    width: size.width * 0.9,
                                    height: size.height * 0.3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: size.width * 1,
                                          height: size.height * 0.15,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://images.pexels.com/photos/257727/pexels-photo-257727.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                                          )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: Text(
                                            "Tratamiento secundario.",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              "Remoción de materiales coloidales y disueltos, utilizando  microorganismos."),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SlideInLeft(
                                duration: Duration(milliseconds: 1500),
                                child: Card(
                                  child: Container(
                                    width: size.width * 0.9,
                                    height: size.height * 0.3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: size.width * 1,
                                          height: size.height * 0.15,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://images.unsplash.com/photo-1631466266525-53e979c9e29b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1502&q=80"),
                                          )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: Text(
                                            "Tratamiento terciario.",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              "Eliminación de materiales disueltos que incluyen gases, sustancias orgánicas naturales y sintéticas."),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: _controller.value.isPlaying
            ? Icon(Icons.pause)
            : Icon(Icons.play_arrow),
      ),
    );
  }
}
