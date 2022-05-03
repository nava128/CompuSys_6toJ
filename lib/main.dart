import 'package:flutter/material.dart';
import 'package:nava/galeria_computadoras.dart';

void main() {
  runApp(CompuSistemApp());
} // FUNCION PRINCIAL

class CompuSistemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CompuSistem',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: PaginaInicial());
  } // widget
} // clase compusistem widget sin estado
