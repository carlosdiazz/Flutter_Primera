import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/contador_pages.dart';

//import '../pages/home_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: ContadorPage(),
        ));
  }
}
