// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/rendering.dart';
import '/flutter_flow/flutter_flow_util.dart' hide LatLng;
import 'package:google_maps_flutter/google_maps_flutter.dart' as GoogleMaps;
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:math';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:async/async.dart';
import 'package:flutter/services.dart';

class CustomMapWidget extends StatefulWidget {
  const CustomMapWidget({
    Key? key,
    this.width,
    this.height,
    required this.initialLocation,
  }) : super(key: key);

  final double? width;
  final double? height;
  final LatLng initialLocation;

  @override
  _CustomMapWidgetState createState() => _CustomMapWidgetState();
}

class _CustomMapWidgetState extends State<CustomMapWidget> {
  GoogleMaps.LatLng mapCenter = GoogleMaps.LatLng(12.8880028, 80.0675755);
  //12.8941073, 80.0642922
  //12.8939723,80.0564306
  //12.8880028,80.0675755

  List<dynamic> candidateList = [
    {
      "id": "1",
      "latitude": 12.8923137,
      "longitude": 80.0628492,
      "gender": "Male",
      "image":
          "https://firebasestorage.googleapis.com/v0/b/teachnear.appspot.com/o/appImages%2FEllipse_15.png?alt=media&token=8091626b-c632-4899-8615-909b59cb00bb",
    },
    {
      "id": "2",
      "latitude": 12.8906792,
      "longitude": 80.0583864,
      "gender": "Female",
      "image":
          "https://firebasestorage.googleapis.com/v0/b/teachnear.appspot.com/o/appImages%2FEllipse_15.png?alt=media&token=8091626b-c632-4899-8615-909b59cb00bb",
    },
    {
      "id": "3",
      "latitude": 12.8939723,
      "longitude": 80.0564306,
      "gender": "Male",
      "image":
          "https://firebasestorage.googleapis.com/v0/b/teachnear.appspot.com/o/appImages%2FEllipse_15.png?alt=media&token=8091626b-c632-4899-8615-909b59cb00bb",
    },
    // Add more candidate objects here with desired latitude, longitude, gender, and image URL
  ];

  void updateMapCenter(LatLng center) {
    setState(() {
      mapCenter = center;
    });
  }

  void updateCandidateList() {
    // Implement your logic to update the candidate list here
  }

  String getMapApiKey() {
    if (Platform.isIOS) {
      return "AIzaSyB_ZeOKcyL9vpgFXePrJ7zPExYt1YVMYig";
    } else if (Platform.isAndroid) {
      return "AIzaSyAjWt0pvGCvHfFil04WQsTqdXFUEchUcD8";
    } else {
      return "AIzaSyB2RQ7ZfnSVytxUShaOtsx__rcO1MkwpLc";
    }
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMaps.GoogleMap(
      key: Key(getMapApiKey()),
      initialCameraPosition: GoogleMaps.CameraPosition(
        target: mapCenter,
        zoom: 10,
      ),
      markers: Set<GoogleMaps.Marker>.of(candidateList.map((candidate) {
        GoogleMaps.LatLng position =
            GoogleMaps.LatLng(candidate['latitude'], candidate['longitude']);
        GoogleMaps.BitmapDescriptor markerIcon = candidate['gender'] == 'Male'
            ? GoogleMaps.BitmapDescriptor.defaultMarkerWithHue(
                GoogleMaps.BitmapDescriptor.hueBlue)
            : GoogleMaps.BitmapDescriptor.defaultMarkerWithHue(300);

        return GoogleMaps.Marker(
          markerId: GoogleMaps.MarkerId(candidate['id']),
          position: position,
          onTap: () {
            // Implement your logic for marker tap here
          },
          infoWindow: GoogleMaps.InfoWindow(
            title: candidate['id'],
            snippet: candidate['gender'],
            onTap: () {
              // Implement your logic for info window tap here
            },
          ),
          // Custom marker icon with image
          icon: GoogleMaps.BitmapDescriptor.fromBytes(
            (CachedNetworkImageProvider(candidate['image'])).getBytes(),
          ),
        );
      })),
      onCameraMove: (GoogleMaps.CameraPosition position) {
        updateMapCenter(position.target);
        updateCandidateList();
      },
    );
  }
}
