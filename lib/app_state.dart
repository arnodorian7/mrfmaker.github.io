import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _searchshow = prefs.getString('ff_searchshow') ?? _searchshow;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _searchshow = 'Hide';
  String get searchshow => _searchshow;
  set searchshow(String _value) {
    _searchshow = _value;
    prefs.setString('ff_searchshow', _value);
  }

  double _LatestMRF = 0.0;
  double get LatestMRF => _LatestMRF;
  set LatestMRF(double _value) {
    _LatestMRF = _value;
  }

  String _LastMrfString = '';
  String get LastMrfString => _LastMrfString;
  set LastMrfString(String _value) {
    _LastMrfString = _value;
  }

  String _RequestedStatus = 'Requested';
  String get RequestedStatus => _RequestedStatus;
  set RequestedStatus(String _value) {
    _RequestedStatus = _value;
  }

  String _UnderReview = 'Under Review';
  String get UnderReview => _UnderReview;
  set UnderReview(String _value) {
    _UnderReview = _value;
  }

  String _LpoIssued = 'LPO ISSUED';
  String get LpoIssued => _LpoIssued;
  set LpoIssued(String _value) {
    _LpoIssued = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
