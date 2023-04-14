import 'package:flutter/material.dart';

class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    SegundaPaginaParametros parametro =
        ModalRoute.of(context)?.settings.arguments as SegundaPaginaParametros;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda pagina"),
      ),
      body: Center(
        child: Text("${parametro.nombre} ${parametro.apellido}"),
      ),
    );
  }
}

class SegundaPaginaParametros {
  String nombre;
  String apellido;
  SegundaPaginaParametros({required this.nombre, required this.apellido});
}
