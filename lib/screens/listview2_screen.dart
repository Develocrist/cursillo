import 'package:curso_udemy/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Listview2screen extends StatelessWidget {
  final options = const ['Goku', 'Vegeta', 'Gohan', 'Piccoro'];

  const Listview2screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView tipo 2'),
          // elevation: 5,
          // backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
            itemCount: options.length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_outlined,
                    color: AppTheme.primary,
                  ),
                  onTap: () {
                    final game = options[index];
                    print(game);
                  },
                )));
  }
}
