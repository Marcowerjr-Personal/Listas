import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String _name = '', _email = '', _password = '';

  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Inputs'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
      body: _inputElements(),
    );
  }

  Widget _inputElements() => ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: <Widget>[
          _textField(),
          Divider(),
          _emailField(),
          Divider(),
          _passwordField(),
          Divider(),
          _showData()
        ],
      );

  Widget _textField() => TextField(
        autofocus: true,
        textCapitalization: TextCapitalization.sentences, //teclado
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: 'Name:',
            labelText: 'Name',
            helperText: 'Aquí va tu nombre *_*',
            suffixIcon: Icon(Icons.text_fields), //aparece a la derecha de field
            icon: Icon(Icons.account_circle),
            counter: Text('Caracteres: ${_name.length}')),
        onChanged: (text) {
          //evento
          setState(() {
            _name = text;
          });
        },
      );
  Widget _emailField() => TextField(
        textCapitalization: TextCapitalization.sentences, //teclado
        keyboardType: TextInputType.emailAddress, //tipo de entrada de email
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: 'Correo:',
            labelText: 'Correo',
            helperText: 'Aquí va tu correo *_*',
            suffixIcon: Icon(Icons.mail), //aparece a la derecha de field
            icon: Icon(Icons.mail),
            counter: Text('Caracteres: ${_email.length}')),
        onChanged: (text) {
          //evento
          setState(() {
            _email = text;
          });
        },
  );
  Widget _passwordField() => TextField(
        //textCapitalization: TextCapitalization.sentences, //teclado
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: 'Password:',
            labelText: 'Password',
            helperText: 'Aquí va tu contraseña *_*',
            suffixIcon: Icon(Icons.security), //aparece a la derecha de field
            icon: Icon(Icons.lock),
            counter: Text('Caracteres: ${_password.length}')),
        onChanged: (text) {
          //evento
          setState(() {
            _password = text;
          });
        },
  );
  Widget _showData() => ListTile(
        title: Text('Name: $_name\nCorreo: $_email\nPassword: $_password'),
      );
}
