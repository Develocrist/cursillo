import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        initialValue: '',
        onChanged: (value) {
          //con esta funcion de validacion uno puede decidir que caracteres se pueden o no usar
          print('value $value');
        },
        validator: (value) {
          if (value == null) return 'Este campo es requerido';
          return value.length < 3 ? 'Mínimo de 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          //counterText: '3 caracteres', //va al final
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          //prefixIcon: Icon(Icons.shield_moon_outlined),
          icon: icon == null ? null : Icon(icon),
        ));
  }
}
