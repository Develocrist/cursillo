import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CardScreen'),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10), //separacion del card en relacion a la pantalla
            children: const [
              CustomCardType1(),
              SizedBox(height: 20),
              CustomCardType2(
                imageUrl:
                    'https://img.freepik.com/free-vector/tropical-forest-landscape-with-dense-forest_52683-24165.jpg?w=900&t=st=1664824076~exp=1664824676~hmac=1bb19e27805cbe20a7ca90ad75173cdfc83adacbbec29f5ebb3b310882534688',
                name: ('Selva digital'),
              ),
              SizedBox(height: 20),
              CustomCardType2(
                imageUrl:
                    'https://w0.peakpx.com/wallpaper/844/42/HD-wallpaper-anime-landscape-torii-sunset-clouds-scenic-anime.jpg',
                name: ('Un bello atardecer'),
              ),
              SizedBox(height: 20),
              CustomCardType2(
                imageUrl:
                    'https://w0.peakpx.com/wallpaper/474/280/HD-wallpaper-anime-landscape-cloud-street-tree.jpg',
                name: null,
              ),
              SizedBox(height: 20),
              CustomCardType2(
                imageUrl:
                    'https://w0.peakpx.com/wallpaper/925/478/HD-wallpaper-anime-landscape-night-scenic-clouds-trees-anime.jpg',
                name: ('Otro atarceder'),
              )
            ]));
  }
}
