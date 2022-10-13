import 'package:flutter/material.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  void displayDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        //builder es un codigo que construye un widget
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          //El estilo del boton viene de app_theme.dart, lo comentado de abajo puede sobreescribir el estilo de app_theme.dart
          // style: ElevatedButton.styleFrom(
          //     primary: Colors.indigo,
          //     shape: const StadiumBorder(),
          //     elevation: 0),
          child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Mostrar Alerta',
                style: TextStyle(fontSize: 20),
              )),

          onPressed: () => displayDialog(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
