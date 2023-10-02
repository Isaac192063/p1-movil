import 'package:flutter/material.dart';

class CreateCount extends StatelessWidget {
  const CreateCount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        Text('hola mundo'),
        // MaterialButton(
        //     height: 70,
        //     minWidth: 100,
        //     color: Colors.orange,
        //     child: const Text('inicio',
        //         style: TextStyle(
        //           color: Colors.white,
        //         )),
        //     onPressed: () {
        //       Navigator.pushNamed(context, '/');
        //     }),
        // MaterialButton(
        //     height: 70,
        //     minWidth: 100,
        //     color: Colors.orange,
        //     child: const Text('inicr secion',
        //         style: TextStyle(
        //           color: Colors.white,
        //         )),
        //     onPressed: () {
        //       Navigator.pushNamed(context, '/sign');
        //     })
      ]),
    );
  }
}
