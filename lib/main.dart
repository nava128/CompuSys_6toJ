import 'package:flutter/material.dart';

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

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} // widget con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/compu1.jpg",
    "assets/images/compu2.jpg",
    "assets/images/compu3.jpg",
    "assets/images/compu1.jpg",
    "assets/images/compu2.jpg",
    "assets/images/compu3.jpg",
    "assets/images/compu1.jpg",
    "assets/images/compu2.jpg",
    "assets/images/compu3.jpg",
    "assets/images/compu1.jpg",
    "assets/images/compu2.jpg",
    "assets/images/compu3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Galeria de computadoras"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 12,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
