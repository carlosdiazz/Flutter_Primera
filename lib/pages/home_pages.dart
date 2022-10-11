import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  TextStyle estiloTesto = TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mantequilla Money"),
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
            Center(child: Text("RD 150,000.15", style: estiloTesto))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('HOLAA MUNDO'),
        child: Icon(Icons.add),
      ),
    );
  }
}
