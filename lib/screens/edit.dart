import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '/util/dbhelper.dart';
import '/model/shoppinglist.dart';

void main() {
  runApp(const Edit());
}

class Edit extends StatelessWidget {
  const Edit({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Editar item',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Editar item'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.indigo,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: const Center(
            child: Text("Texto aqui")

        ),
      ),
    );
  }
}