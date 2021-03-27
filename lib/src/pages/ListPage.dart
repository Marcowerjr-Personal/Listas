import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Página de Listas y Scroll'),
        ),
        body: _listas(context),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      );

  Widget _listas(BuildContext context) => ListView.builder(
        itemCount: superheroes.length,
        itemBuilder: (context, index) => Card(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(superheroes[index])),
        ),
        padding: const EdgeInsets.all(5),
        physics: BouncingScrollPhysics(),
      );
  List superheroes = [
    'Atom',
    'Flash',
    'Capitán América',
    'Thor',
    'Iron Man',
    'Hulk',
    'Viuda Negra',
    'Batman',
    'Supermán',
    'Cyborg',
    'Aquaman',
    'Linterna Verde',
    'Supergirl',
    'Robin',
    'Spider-Man',
    'Star-Lord',
    'Capitán Marvel',
    'Capitana Marvel',
    'Ms. Marvel'
  ];
}
