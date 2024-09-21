import 'package:flutter/material.dart';
import '../util/dbhelper.dart';
import '../model/shoppinglist.dart';
import 'edit.dart';

void main() {
  runApp(const ShoppingListApp());
}

class ShoppingListApp extends StatelessWidget {
  const ShoppingListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Compras',
      home: const ShoppingListScreen(),
    );
  }
}

class ShoppingListScreen extends StatefulWidget {
  const ShoppingListScreen({super.key});

  @override
  _ShoppingListScreenState createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  DbHelper helper = DbHelper();
  List<ShoppingList> items = [];
  int count = 0;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() async {
    // Inicializa o banco e carrega os dados
    var db = await helper.db;
    List result = await helper.getLists();

    setState(() {
      items = result.map((item) => ShoppingList.fromMap(item)).toList();
      count = items.length;
    });
  }

  void _navigateToEdit(BuildContext context, ShoppingList item) {
    // Navega para a tela de edição, passando o item selecionado
    Navigator.push(
      context,
      MaterialPageRoute(
        //builder: (context) => Edit(item: item),
        builder: (context) => const Edit(),
        settings: RouteSettings(
          arguments: item,
        ),
      ),
    ).then((value) {
      // Quando voltar da tela de edição, recarrega os dados
      _loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Compras'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.indigo,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
        itemCount: count,
        padding: const EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          return _buildListItem(context, items[index]);
        },
      ),
    );
  }

  Widget _buildListItem(BuildContext context, ShoppingList item) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(
          item.title,
          style: const TextStyle(fontSize: 18),
        ),
        subtitle: Text("Quantidade: ${item.quantity} ${item.measure}"),
        trailing: const Icon(Icons.edit),
        onTap: () {
          _navigateToEdit(context, item);
        },
      ),
    );
  }
}
