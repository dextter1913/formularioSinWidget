import 'package:flutter/material.dart';
import 'package:form_sin_widget/pages/my_home_page.dart';
import 'package:form_sin_widget/pages/segunda_pagina.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
        "/SegundaRuta": (context) => const SegundaPagina(),
      },
    );
  }
}
