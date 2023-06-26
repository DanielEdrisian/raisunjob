import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? stringBase64Encode(
  String keyID,
  String secret,
) {
  String inputString = keyID + ":" + secret;
  List<int> inputBytes = utf8.encode(inputString);
  String base64String = base64.encode(inputBytes);

  return base64String;
}

int calculateAge(DateTime dateBirth) {
  // calculate age in years given a dateBirth
  DateTime currentDate = DateTime.now();
  int age = currentDate.year - dateBirth.year;
  int month1 = currentDate.month;
  int month2 = dateBirth.month;
  if (month2 > month1) {
    age--;
  } else if (month1 == month2) {
    int day1 = currentDate.day;
    int day2 = dateBirth.day;
    if (day2 > day1) {
      age--;
    }
  }
  return age;
}

String listToString(List<String> inputList) {
  String output = "";

  for (String s in inputList) {
    output = output + " , ";
  }
  return output.trim();
}

List<CandidateProfileStruct> listCandidateFilter(
    List<CandidateProfileBundleRecord> candidateList) {
  List<CandidateProfileStruct> outputList = [];

  for (CandidateProfileBundleRecord bundle in candidateList) {
    outputList.addAll(bundle.candidateList);
  }

  return outputList;
}

List<String> splitlLanguages(String languages) {
  String cleanedString = languages.replaceAll(",", "");

  // Split the string by whitespace into a list of words
  List<String> wordsList = cleanedString.split(RegExp(r'\s+'));

  return wordsList;
}

DateTime convertStringtoDatetime(String dob) {
// convert the given dob of date as string in DD/MM/YYYY format to date time and return
  DateFormat format = DateFormat("dd/MM/yyyy");
  DateTime date = format.parse(dob);
  return date;
}
