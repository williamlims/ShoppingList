import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '/util/dbhelper.dart';
import '/model/shoppinglist.dart';


void main() {
  runApp(const New());
}

class New extends StatelessWidget {
  const New({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Novo item',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Novo item'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.indigo,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
          body: Container(
            //crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisSize: MainAxisSize.min,
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('We move under cover and we move as one'),
                Text('Through the night, we have one shot to live another day'),
                Text('We cannot let a stray gunshot give us away'),
                Text('We will fight up close, seize the moment and stay in it'),
                Text("It's either that or meet the business end of a bayonet"),
                Text("The code word is 'Rochambeau,' dig me?"),
              ],
            )
          ),
        ),
    );
  }
}