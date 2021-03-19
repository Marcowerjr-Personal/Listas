import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SliderChecksPage extends StatefulWidget {
  SliderChecksPage({Key key}) : super(key: key);

  @override
  _SliderCheckPageState createState() => _SliderCheckPageState();
}

class _SliderCheckPageState extends State<SliderChecksPage> {
  double _sliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Slider-Checks'),
      ),
      body: _inputElements(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }

  Widget _inputElements(BuildContext context) => ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: <Widget>[
          Text('Slider'),
          Divider(),
          _slider(),
          Divider(),
          Text('CheckBox'),
          _checks()
        ],
      );

  Widget _slider() => Slider(
        value: _sliderValue,
        min: 0,
        max: 100,
        divisions: 10,
        label: _sliderValue.round().toString(),
        onChanged: (value) {
          setState(() {
            _sliderValue = value;
          });
        },
      );

  Widget _checks() => CheckboxListTile(
        title: const Text('CheckBox'),
        value: timeDilation != 1.0,
        onChanged: (bool value) {
          setState(() {
            if (value) {
              timeDilation = 2.0;
            } else {
              timeDilation = 1.0;
            }
          });
        },
        secondary: const Icon(Icons.hourglass_empty),
      );
}
