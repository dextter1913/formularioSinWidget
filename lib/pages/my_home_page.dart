import 'package:flutter/material.dart';
import 'package:form_sin_widget/pages/segunda_pagina.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nombreTextController = TextEditingController();
  TextEditingController apellidoTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("formulario sin widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Nombre:"),
              controller: nombreTextController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Apellido:"),
              controller: apellidoTextController,
            ),
            ElevatedButton(
              onPressed: () => mostrarSegundaPagina(context),
              child: const Text("Mostrar Segunda Pagina"),
            ),
          ],
        ),
      ),
    );
  }

  void mostrarSegundaPagina(BuildContext context) {
    Navigator.of(context).pushNamed("/SegundaRuta",
        arguments: SegundaPaginaParametros(
          nombre: nombreTextController.text,
          apellido: apellidoTextController.text,
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    nombreTextController = TextEditingController();
    apellidoTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    nombreTextController.dispose();
    apellidoTextController.dispose();
  }
}
