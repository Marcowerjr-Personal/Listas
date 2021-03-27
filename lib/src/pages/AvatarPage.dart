import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) => Scaffold(
        appBar: _appBar(context),
        body: Center(
          child: CircleAvatar(
              backgroundColor: Colors.brown,
              child: Text('MC', textScaleFactor: 5),
              radius: 100),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context); //me regreso a la página anterior(padre)
            },
            child: Icon(Icons.arrow_back)),
      );

  Widget _appBar(BuildContext context) => AppBar(
        title: Text('Página de avatares'),
        actions: <Widget>[
          CircleAvatar(backgroundColor: Colors.brown, child: Text('MC')),
        ],
      );
}
