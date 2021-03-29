import 'package:flutter/material.dart';
import 'src/pages/AlertPage.dart';
import 'src/pages/AnimatedPage.dart';
import 'src/pages/AvatarPage.dart';
import 'src/pages/CardPage.dart';
import 'src/pages/InputsPage.dart';
import 'src/pages/HomePage.dart';
import 'src/pages/ListPage.dart';
import 'src/pages/SliderChecksPage.dart';

Map<String, WidgetBuilder> routes(BuildContext context) {
  Map<String, WidgetBuilder> rutas = {
    '/'                  : (BuildContext context) => HomePage(),
    'alert'              : (BuildContext context) => AlertPage(),
    'avatar'             : (BuildContext context) => AvatarPage(),
    'card'               : (BuildContext context) => CardPage(),
    'animatedContainer'  : (BuildContext context) => AnimatedPage(),
    'inputs'             : (BuildContext context) => InputsPage(),
    'slider'             : (BuildContext context) => SliderChecksPage(),
    'list'               : (BuildContext context) => ListPage()
  };
  return rutas;
}
