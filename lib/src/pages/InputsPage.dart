import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  String _name = '', _email = '', _password = '';

  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Inputs'),
      ),
    );
  }
}
