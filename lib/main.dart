import 'package:demo7/lose.dart';
import 'package:demo7/win.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'kbc.dart';
import 'onecrore.dart';

void main() {
  runApp(MaterialApp(
    // home: Kbc(),
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      'kbc': (context) => Kbc(),
      'win': (context) => Win(),
      'lose': (context) => Lose(),
      'crore': (context) => Onecrore(),
    },
  ));
}
