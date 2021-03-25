import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Página de avatares'),
      actions: <Widget>[
        CircleAvatar(
          backgroundColor: 
            Colors.brown.shade800, 
            child: Text('MC')
        ),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () { 
        Navigator.pop(context); //me regreso a la página anterior(padre)
       },
      child: Icon(Icons.arrow_back)
    ),
  );


}
