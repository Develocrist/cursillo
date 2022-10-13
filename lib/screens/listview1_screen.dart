import 'package:flutter/material.dart';

class Listview1screen extends StatelessWidget {
  final options = const ['Goku', 'Vegeta', 'Gohan', 'Piccoro'];

  const Listview1screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView tipo 1'),
        ),
        body: ListView(
          children: [
            //agarra los strings contenidos en options y los muestra en forma de lista
            ...options
                .map((game) => ListTile(
                      title: Text(game),
                      trailing: const Icon(Icons.arrow_forward_outlined),
                    ))
                .toList(),

            //----------- LISTA BASICA ABAJO
            // ListTile(
            //   leading: Icon(Icons.thumb_up_off_alt_outlined),
            //   title: Text("Hola mundo"),
            // )
          ],
        ));
  }
}
