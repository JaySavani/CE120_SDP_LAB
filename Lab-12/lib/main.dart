import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lab_12/pages/choose_location.dart';
import 'package:lab_12/pages/home.dart';
import 'package:lab_12/pages/loading.dart';
import 'dart:convert';
import 'package:lab_12/services/word_time.dart';

void main() => runApp(MaterialApp(
// home: Home(),
// instead of making home: property to make any page to initialize at beginning...
// we can use following code ....
// initialRoute: '/home',
        initialRoute: '/',
        routes: {
          '/': (context) => Loading(),
          '/location': (context) => ChooseLocation(),
          '/home': (context) => Home(),
        }));
