import 'package:flutter/material.dart';
import 'package:listview/routes.dart';
import 'package:listview/src/pages/ErrorPage.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes(context),
      onGenerateRoute: (RouteSettings settings) => MaterialPageRoute(
        builder: (BuildContext context) => ErrorPage()
      ),
    );
  }
}