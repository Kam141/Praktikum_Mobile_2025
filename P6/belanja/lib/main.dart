import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
      routes: {
        '/': (context) =>  HomePage(),
        '/item': (context) =>  ItemPage(item: ModalRoute.of(context)!.settings.arguments as dynamic),
      },     
  ));
}

