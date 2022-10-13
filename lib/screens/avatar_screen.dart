import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://phantom-marca.unidadeditorial.es/446b3877aea302bce83e85a3d8ac54ce/crop/323x0/2048x1150/resize/828/f/webp/assets/multimedia/imagenes/2022/08/18/16608409742718.jpg'),
        ),
      ),
    );
  }
}
