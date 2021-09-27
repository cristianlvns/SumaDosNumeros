import 'package:flutter/material.dart';
import 'package:suma/src/pages/sumaDosNumeros.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: SumaDosNumeros(),
      initialRoute: '/',
      routes: {
        //Todas las rutas de la aplicación
        '/': (context) => SumaDosNumeros(),
      },
    );
  }
}
