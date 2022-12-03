import 'package:flutter/material.dart';
import 'package:flutter_ui/list_page.dart';

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'UI',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const ListPage()
  ));
}

