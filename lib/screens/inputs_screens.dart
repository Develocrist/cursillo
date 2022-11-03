import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Cristofer',
      'last_name': 'Torrejón',
      'email': 'cristo@gmail.com',
      'password': '12345',
      'role': 'admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario', formProperty: 'first_name',
                    formValues: formValues,
                    // helperText: 'Solo letras',
                    // icon: Icons.person,
                    // suffixIcon: Icons.person_pin_outlined,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    formProperty: 'last_name', formValues: formValues,
                    // helperText: 'Solo letras',
                    // icon: Icons.person,
                    // suffixIcon: Icons.person_pin_outlined,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del usuario',
                    formProperty: 'email', formValues: formValues,
                    // helperText: 'Solo letras',
                    // icon: Icons.person,
                    // suffixIcon: Icons.person_pin_outlined,
                    teclado: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    esPassword: true,
                    formProperty: 'password', formValues: formValues,
                    // helperText: 'Solo letras',
                    // icon: Icons.person,
                    // suffixIcon: Icons.person_pin_outlined,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(
                          value: 'SuperUser', child: Text('SuperUser')),
                      DropdownMenuItem(
                          value: 'Senior Developer',
                          child: Text('Senior Developer')),
                      DropdownMenuItem(
                          value: 'Jr. Developer', child: Text('Jr. Developer')),
                    ],
                    onChanged: (String? value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(
                          FocusNode()); //*oculta el teclado despues de presionar el boton
                      if (!myFormKey.currentState!.validate()) {
                        //*validate devuelve un valor booleano
                        print('Formulario no valido');
                      }
                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
