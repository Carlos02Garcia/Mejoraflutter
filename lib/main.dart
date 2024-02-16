import 'package:flumejoralogin/interfaz/HomeInicio.dart';
import 'package:flutter/material.dart';
import 'package:flumejoralogin/interfaz/principal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeInicio(),
    );
  }
}
