import 'package:caudiclean/src/model/username.dart';
import 'package:flutter/material.dart';

class SliderSix extends StatelessWidget {
  const SliderSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Username user = ModalRoute.of(context)!.settings.arguments as Username;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "¡Llegó la hora del tratamiento!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xff22ADCC)),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  "¡Por un agua sin residuos!",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 22,
                      color: Color(0xff22ADCC)),
                ),
              )
            ],
          ),
          Column(children: [
            Container(
                padding: EdgeInsets.only(top: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, 'viewPagePasoOne',
                              arguments: user);
                        },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              EdgeInsets.only(
                                  left: 80, right: 80, top: 10, bottom: 10),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff3dbfe5))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Jugar",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffffffff)),
                            )
                          ],
                        ))
                  ],
                )),
          ])
        ],
      ),
    );
  }
}
