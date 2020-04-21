import 'package:flutter/material.dart';

class Task {

  String taskName;
  double time;
  String color;
  Map<String, bool> days = {
    'M': false,
    'T': false,
    'W': false,
    'T': false,
    'F': false,
    'S': false,
    'S': false,
  };

}