import './currency_conv_material_page.dart';
import 'package:flutter/material.dart';



void main(List<String> args) {
  runApp(const  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp(
      {super.key}); // key es una clase que ayuda a diferenciar a flutter a diferenciar widgets

  @override
  Widget build(BuildContext context) {
    //buildContext da contexto sobre como esta este widget en ls aplicacion
    return const MaterialApp(home: CurrencyConvMaterialPage());
    //todo esto es un Widget Tree, donde la raíz es MaterialApp
  }
}
// tipos de widgets
/**
 * StetelessWidget: inmutable
 * 
 * StatefulWidget: mutable
 * state:  datos que van a afectar al widget
 */

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConvMaterialPage(),
    );
  }
}