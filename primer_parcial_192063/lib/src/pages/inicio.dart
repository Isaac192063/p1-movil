import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text('sign in'),
        MaterialButton(
          minWidth: 200.0,
          height: 40.0,
          onPressed: () {
            Navigator.pushNamed(context, '/sign');
          },
          color: Colors.lightBlue,
          child: const Text('Iniciar seción',
              style: TextStyle(color: Colors.black)),
        ),
        MaterialButton(
          minWidth: 200.0,
          height: 40.0,
          onPressed: () {
            Navigator.pushNamed(context, '/create');
          },
          color: Colors.lightBlue,
          child:
              const Text('Crear cuenta', style: TextStyle(color: Colors.black)),
        )
      ],
    ));
  }
}
