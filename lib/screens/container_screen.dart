import 'dart:math';

import 'package:flutter/material.dart';

//crear un stateful widget con las propiedades por default

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidget();
}

class _ContainerWidget extends State<ContainerWidget> {
  double ancho = 50;
  double alto = 50;
  Color _color = Colors.blue;

  BorderRadiusGeometry radioBorde = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Animation Container')),
        body: Center(
          child: AnimatedContainer(
            width: ancho,
            height: alto,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: radioBorde,
            ),
            duration: const Duration(milliseconds: 400),
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              final random = Random();

              ancho = random.nextInt(300).toDouble();
              alto = random.nextInt(300).toDouble();

              _color = Color.fromRGBO(random.nextInt(255), random.nextInt(256),
                  random.nextInt(255), 1);

              radioBorde =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
          child: const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
