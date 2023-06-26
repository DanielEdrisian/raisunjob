import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _sampleJSON = prefs.getStringList('ff_sampleJSON')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _sampleJSON;
    });
    _safeInit(() {
      _currentRecruiter =
          prefs.getString('ff_currentRecruiter')?.ref ?? _currentRecruiter;
    });
    _safeInit(() {
      _testInitiaLocation =
          _latLngFromString(prefs.getString('ff_testInitiaLocation')) ??
              _testInitiaLocation;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _messageReaction = false;
  bool get messageReaction => _messageReaction;
  set messageReaction(bool _value) {
    _messageReaction = _value;
  }

  String _messageFocusText = '';
  String get messageFocusText => _messageFocusText;
  set messageFocusText(String _value) {
    _messageFocusText = _value;
  }

  bool _messageFocusColor = false;
  bool get messageFocusColor => _messageFocusColor;
  set messageFocusColor(bool _value) {
    _messageFocusColor = _value;
  }

  List<dynamic> _sampleJSON = [
    jsonDecode(
        '{\"latitude\":37.422,\"longitude\":-122.084,\"name\":\"Location A\",\"imageUrl\":\"https://example.com/imageA.jpg\"}'),
    jsonDecode(
        '{\"latitude\":37.425,\"longitude\":-122.08,\"name\":\"Location B\",\"imageUrl\":\"https://example.com/imageB.jpg\"}'),
    jsonDecode(
        '{\"latitude\":37.42,\"longitude\":-122.09,\"name\":\"Location C\",\"imageUrl\":\"https://example.com/imageC.jpg\"}')
  ];
  List<dynamic> get sampleJSON => _sampleJSON;
  set sampleJSON(List<dynamic> _value) {
    _sampleJSON = _value;
    prefs.setStringList(
        'ff_sampleJSON', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToSampleJSON(dynamic _value) {
    _sampleJSON.add(_value);
    prefs.setStringList(
        'ff_sampleJSON', _sampleJSON.map((x) => jsonEncode(x)).toList());
  }

  void removeFromSampleJSON(dynamic _value) {
    _sampleJSON.remove(_value);
    prefs.setStringList(
        'ff_sampleJSON', _sampleJSON.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromSampleJSON(int _index) {
    _sampleJSON.removeAt(_index);
    prefs.setStringList(
        'ff_sampleJSON', _sampleJSON.map((x) => jsonEncode(x)).toList());
  }

  void updateSampleJSONAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _sampleJSON[_index] = updateFn(_sampleJSON[_index]);
    prefs.setStringList(
        'ff_sampleJSON', _sampleJSON.map((x) => jsonEncode(x)).toList());
  }

  DocumentReference? _currentRecruiter;
  DocumentReference? get currentRecruiter => _currentRecruiter;
  set currentRecruiter(DocumentReference? _value) {
    _currentRecruiter = _value;
    _value != null
        ? prefs.setString('ff_currentRecruiter', _value.path)
        : prefs.remove('ff_currentRecruiter');
  }

  LatLng? _testInitiaLocation = LatLng(12.8941073, 80.0642922);
  LatLng? get testInitiaLocation => _testInitiaLocation;
  set testInitiaLocation(LatLng? _value) {
    _testInitiaLocation = _value;
    _value != null
        ? prefs.setString('ff_testInitiaLocation', _value.serialize())
        : prefs.remove('ff_testInitiaLocation');
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
