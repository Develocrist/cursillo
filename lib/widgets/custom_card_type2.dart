import 'package:curso_udemy/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  //variable para usarla en los cambios de imagenes o textos de las imagenes
  final String imageUrl;
  final String? name;

  const CustomCardType2({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip
          .antiAlias, //sirve para adecuar el contenido, redondear un poco los bordes para q la imagen no se salga
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage('assets/jar-loading.gif'),
          width: double.infinity,
          height: 250,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
        ),
        //condicion para que cuando no se reciba nombre, no se incluya un container con la descripción
        if (name != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
            child: Text(name!),
          )
      ]),
    );
  }
}
