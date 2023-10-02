import 'package:flutter/material.dart';
import 'package:primer_parcial_192063/src/pages/inicio.dart';
import 'package:primer_parcial_192063/src/pages/pg_create_count.dart';
import 'package:primer_parcial_192063/src/pages/pg_sign_in.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignIn(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const Inicio());
          case '/sign':
            return MaterialPageRoute(builder: (context) => const SignIn());
          case '/create':
            return MaterialPageRoute(builder: (context) => const CreateCount());
        }
        return null;
      },
    );
  }
}
