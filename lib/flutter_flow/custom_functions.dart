import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

double? sumvalues(
  double? value1,
  double? value2,
) {
  // Add Value 1 To Value and Return Sum
  if (value1 == null || value2 == null) {
    return null;
  }
  return value1 + value2;
}
