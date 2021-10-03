import 'dart:js';

import 'package:flutter/material.dart';
import 'package:secondapp/pages/home.dart';
import 'package:secondapp/pages/loading.dart';
import 'package:secondapp/pages/choose_location.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
