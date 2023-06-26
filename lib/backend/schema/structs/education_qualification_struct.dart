// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EducationQualificationStruct extends FFFirebaseStruct {
  EducationQualificationStruct({
    String? degreeType,
    String? degree,
    String? course,
    String? instituteName,
    DateTime? fromDate,
    DateTime? toDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _degreeType = degreeType,
        _degree = degree,
        _course = course,
        _instituteName = instituteName,
        _fromDate = fromDate,
        _toDate = toDate,
        super(firestoreUtilData);

  // "degreeType" field.
  String? _degreeType;
  String get degreeType => _degreeType ?? '';
  set degreeType(String? val) => _degreeType = val;
  bool hasDegreeType() => _degreeType != null;

  // "degree" field.
  String? _degree;
  String get degree => _degree ?? '';
  set degree(String? val) => _degree = val;
  bool hasDegree() => _degree != null;

  // "course" field.
  String? _course;
  String get course => _course ?? '';
  set course(String? val) => _course = val;
  bool hasCourse() => _course != null;

  // "instituteName" field.
  String? _instituteName;
  String get instituteName => _instituteName ?? '';
  set instituteName(String? val) => _instituteName = val;
  bool hasInstituteName() => _instituteName != null;

  // "fromDate" field.
  DateTime? _fromDate;
  DateTime? get fromDate => _fromDate;
  set fromDate(DateTime? val) => _fromDate = val;
  bool hasFromDate() => _fromDate != null;

  // "toDate" field.
  DateTime? _toDate;
  DateTime? get toDate => _toDate;
  set toDate(DateTime? val) => _toDate = val;
  bool hasToDate() => _toDate != null;

  static EducationQualificationStruct fromMap(Map<String, dynamic> data) =>
      EducationQualificationStruct(
        degreeType: data['degreeType'] as String?,
        degree: data['degree'] as String?,
        course: data['course'] as String?,
        instituteName: data['instituteName'] as String?,
        fromDate: data['fromDate'] as DateTime?,
        toDate: data['toDate'] as DateTime?,
      );

  static EducationQualificationStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? EducationQualificationStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'degreeType': _degreeType,
        'degree': _degree,
        'course': _course,
        'instituteName': _instituteName,
        'fromDate': _fromDate,
        'toDate': _toDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'degreeType': serializeParam(
          _degreeType,
          ParamType.String,
        ),
        'degree': serializeParam(
          _degree,
          ParamType.String,
        ),
        'course': serializeParam(
          _course,
          ParamType.String,
        ),
        'instituteName': serializeParam(
          _instituteName,
          ParamType.String,
        ),
        'fromDate': serializeParam(
          _fromDate,
          ParamType.DateTime,
        ),
        'toDate': serializeParam(
          _toDate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static EducationQualificationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      EducationQualificationStruct(
        degreeType: deserializeParam(
          data['degreeType'],
          ParamType.String,
          false,
        ),
        degree: deserializeParam(
          data['degree'],
          ParamType.String,
          false,
        ),
        course: deserializeParam(
          data['course'],
          ParamType.String,
          false,
        ),
        instituteName: deserializeParam(
          data['instituteName'],
          ParamType.String,
          false,
        ),
        fromDate: deserializeParam(
          data['fromDate'],
          ParamType.DateTime,
          false,
        ),
        toDate: deserializeParam(
          data['toDate'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'EducationQualificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EducationQualificationStruct &&
        degreeType == other.degreeType &&
        degree == other.degree &&
        course == other.course &&
        instituteName == other.instituteName &&
        fromDate == other.fromDate &&
        toDate == other.toDate;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([degreeType, degree, course, instituteName, fromDate, toDate]);
}

EducationQualificationStruct createEducationQualificationStruct({
  String? degreeType,
  String? degree,
  String? course,
  String? instituteName,
  DateTime? fromDate,
  DateTime? toDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EducationQualificationStruct(
      degreeType: degreeType,
      degree: degree,
      course: course,
      instituteName: instituteName,
      fromDate: fromDate,
      toDate: toDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EducationQualificationStruct? updateEducationQualificationStruct(
  EducationQualificationStruct? educationQualification, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    educationQualification
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEducationQualificationStructData(
  Map<String, dynamic> firestoreData,
  EducationQualificationStruct? educationQualification,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (educationQualification == null) {
    return;
  }
  if (educationQualification.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue &&
      educationQualification.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final educationQualificationData = getEducationQualificationFirestoreData(
      educationQualification, forFieldValue);
  final nestedData =
      educationQualificationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = educationQualification.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEducationQualificationFirestoreData(
  EducationQualificationStruct? educationQualification, [
  bool forFieldValue = false,
]) {
  if (educationQualification == null) {
    return {};
  }
  final firestoreData = mapToFirestore(educationQualification.toMap());

  // Add any Firestore field values
  educationQualification.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEducationQualificationListFirestoreData(
  List<EducationQualificationStruct>? educationQualifications,
) =>
    educationQualifications
        ?.map((e) => getEducationQualificationFirestoreData(e, true))
        .toList() ??
    [];
