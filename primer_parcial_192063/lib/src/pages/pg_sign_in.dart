import 'package:flutter/material.dart';
// import 'package:primer_parcial_192063/src/utils/my_colors.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 238, 238),
        body: ListView(children: [
          Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: fusion(context),
                  ),
                  circleBig(context,
                      bottom: 0.2,
                      right: MediaQuery.of(context).size.width / 2),
                ],
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('EMAIL ADDRESS'),
                        TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                fillColor: Colors.black)),
                        Text('PASSWORD'),
                        TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                fillColor: Colors.black)),
                      ],
                    ),
                  )),
              const Text(
                'hola como estas',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ]));
    // MaterialButton(
    //     minWidth: 10009oj254,
    //     height: 70,
    //     color: Colors.orange,
    //     child: const Text(
    //       'create',
    //       style: TextStyle(color: Colors.white),
    //     ),
    //     onPressed: () {
    //       Navigator.pushNamed(context, '/create');
    //     }),
    // MaterialButton(
    //     minWidth: 100,
    //     height: 70,
    //     color: Colors.orange,
    //     child: const Text(
    //       'inicio',
    //       style: TextStyle(color: Colors.white),
    //     ),
    //     onPressed: () {
    //       Navigator.pushNamed(context, '/');
    //     }));
  }

  Widget circleBig(context,
      {double top = 0.0,
      double left = 0.0,
      double right = 0.0,
      double bottom = 0.0}) {
    return Positioned(
      top: (top == 0.0) ? null : top,
      left: (left == 0.0) ? null : left,
      right: (right == 0.0) ? null : right,
      bottom: (bottom == 0.0) ? null : bottom,
      child: SizedBox(
        width: MediaQuery.of(context).size.width + 30,
        height: 500, // Alto igual al alto de la pantalla
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000), color: Colors.black),
        ),
      ),
    );
  }

  Widget textDescipcion() {
    return Container(
      margin: const EdgeInsets.only(bottom: 54),
      child: const Text(
        'SIGN IN',
        style: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget iconLabel() {
    return Positioned(
      bottom: 10,
      child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              color: Colors.yellowAccent),
          child: const Icon(
            Icons.person_remove_outlined,
            size: 80,
            color: Colors.white,
          )),
    );
  }

  Widget fusion(context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          circleBig(context, top: -280),
          iconLabel(),
          textDescipcion(),
        ],
      ),
    );
  }
}
