import 'package:curso_udemy/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_camera_back,
              color: AppTheme.primary,
            ),
            title: Text('Soy un mensaje motivacional'),
            subtitle: Text(
                'Aquí probando flutter, día 03/10/2022, necesario para reforzar la programacion móvil'),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right:
                    5), //padding de los botones, se puede hacer para todos los lados
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Cancelar'),
                ),
                TextButton(onPressed: () {}, child: const Text('Aceptar'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
