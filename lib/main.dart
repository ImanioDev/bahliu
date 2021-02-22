import 'package:flutter/material.dart';
//Custom packages
import 'package:bahliu/routes/routes.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bahliu',
      initialRoute: 'login',
      routes: appRoutes,
    );
  }
}