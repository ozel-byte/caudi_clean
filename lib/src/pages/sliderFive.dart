import 'package:flutter/material.dart';

class SLiderFive extends StatelessWidget {
  const SLiderFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola paps"),
      ),
      body: Column(
        children: [
          Text(
            "Hola paaaaa",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
