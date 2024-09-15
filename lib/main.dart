import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula de Listas',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aula de Listas'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.indigo,
        ),
        body: const Center(
          child: Text("Texto"),
        ),
      ),
    );
  }
}




