import 'package:flutter/material.dart';
import '/util/dbhelper.dart';
import '/model/shoppinglist.dart';
import '/screens/new.dart';
import '/screens/listt.dart';
import '/screens/about.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Compras',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Compras'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const New()),
                    );
                  },
                  child: const Text('NOVO ITEM'),
                ),
              ),
              Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ShoppingListApp()),
                    );
                  },
                  child: const Text('ITENS NA LISTA'),
                ),
              ),
              Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const About()),
                    );
                  },
                  child: const Text('SOBRE'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
