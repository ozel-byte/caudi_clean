import 'package:caudiclean/main.dart';
import 'package:caudiclean/src/states/instanciaUsername.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SliderFour extends ConsumerWidget {
  const SliderFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    Size size = MediaQuery.of(context).size;
    InstanciaUsernameState user = watch(instanciaUsernameState.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text("Paso 1"),
      ),
      body: Column(
        children: [
          Text("Pretratamiento."),
          Text("¿Qué va primero?"),
          Container(
            width: size.width * 1,
            height: size.height * 0.2,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: size.width * 0.33,
                      height: size.height * 0.2,
                      color: Colors.pink[200],
                    ),
                    Container(
                      width: size.width * 0.33,
                      height: size.height * 0.2,
                      color: Colors.orange[200],
                    ),
                    Container(
                      width: size.width * 0.33,
                      height: size.height * 0.2,
                      color: Colors.green[200],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
