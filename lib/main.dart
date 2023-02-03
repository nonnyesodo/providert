import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providert/class.dart';
import 'package:providert/ui/add.dart';
import 'package:providert/ui/home.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => WordProvider(),
    child: MaterialApp(
      title: 'provider',
      home: Home(),
      routes: {
        '/new': (context) => Addscreen(),
      },
    ),
  ));
}
