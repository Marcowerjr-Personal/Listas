import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SliderChecksPage extends StatefulWidget {
  SliderChecksPage({Key key}) : super(key: key);

  @override
  _SliderCheckPageState createState() => _SliderCheckPageState();
}

class _SliderCheckPageState extends State<SliderChecksPage> {
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
          Divider(),
          _checks(),
          Divider(),
          Text('Imagen'),
          Divider(),
          _image()
        ],
      );

  Widget _slider() => Slider(
        value: _sliderValue,
        min: 500,
        max: _sliderMax,
        divisions: 10,
        label: _sliderValue.round().toString(),
        onChanged: (value) {
          setState(() {
            _sliderValue = value;
            _imageSize = value;
          });
        },
      );

  Widget _checks() => CheckboxListTile(
        title: const Text('Deshabilitar Slider'),
        value: timeDilation != 1.0,
        onChanged: (bool value) {
          setState(() {
            if (value) {
              timeDilation = 1.1;
              _sliderMax = 500;
              _sliderValue = _sliderMax;
              _imageSize = _sliderValue;
            } else {
              timeDilation = 1.0;
              _sliderMax = 1000;
              _sliderValue = 500;
              _imageSize = _sliderValue;
            }
          });
        },
        secondary: const Icon(Icons.playlist_add_check),
      );

  Widget _image() => FadeInImage(
      width: _imageSize - 50,
      height: _imageSize,
      fit: BoxFit.cover,
      fadeInDuration: Duration(milliseconds: 100),
      image: NetworkImage(
          'https://images.wallpapersden.com/image/download/assassins-creed-valhalla-4k_bGVpaWiUmZqaraWkpJRobWllrWdma2U.jpg'),
      placeholder: AssetImage('assets/loading.gif'));

  double _sliderValue = 500;
  double _sliderMax = 1000;
  double _imageSize = 500;
}
