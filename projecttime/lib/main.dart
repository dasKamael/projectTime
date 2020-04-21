import 'package:flutter/material.dart';
import 'package:projecttime/pages/addTask.dart';
import 'package:projecttime/pages/home.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/addTask': (context) => AddTask()
  },
  
));