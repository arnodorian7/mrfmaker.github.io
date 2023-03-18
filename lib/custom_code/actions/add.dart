// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

double? add(String? value1, double? value2) {
  if (value1 == null || value2 == null) {
    return null;
  }
  double parsedValue1 = double.tryParse(value1) ?? 0.0;
  return parsedValue1 + value2;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
