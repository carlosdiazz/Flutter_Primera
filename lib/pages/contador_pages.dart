import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  TextStyle estiloTesto = const TextStyle(fontSize: 25);
  int conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mantequilla Money"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Text(
              "Ganancias con mantenquilla:",
              style: estiloTesto,
            )),
            Center(child: Text("$conteo", style: estiloTesto))
          ],
        ),
      ),
      floatingActionButton: _crearbotones(),
      floatingActionButtonLocation: null,
    );
  }

  Widget _crearbotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
            onPressed: _reset, child: const Icon(Icons.exposure_zero)),
        const Expanded(
            child: SizedBox(
          width: 30.0,
        )),
        FloatingActionButton(
            onPressed: _restar, child: const Icon(Icons.remove)),
        const SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(onPressed: _agregar, child: const Icon(Icons.add))
      ],
    );
  }

  void _reset() {
    setState(() {
      conteo = 0;
    });
  }

  void _restar() {
    setState(() {
      if (conteo > 0) {
        conteo--;
      }
    });
  }

  void _agregar() {
    setState(() {
      conteo++;
    });
  }
}
