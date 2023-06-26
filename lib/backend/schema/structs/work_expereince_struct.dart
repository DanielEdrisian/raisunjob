// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WorkExpereinceStruct extends FFFirebaseStruct {
  WorkExpereinceStruct({
    String? company,
    DateTime? fromDate,
    DateTime? toDate,
    bool? isPresent,
    String? workExpereince,
    String? position,
    bool? isLinkedOrganization,
    String? organizationLinkedTo,
    DocumentReference? organizationLinkedToID,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _company = company,
        _fromDate = fromDate,
        _toDate = toDate,
        _isPresent = isPresent,
        _workExpereince = workExpereince,
        _position = position,
        _isLinkedOrganization = isLinkedOrganization,
        _organizationLinkedTo = organizationLinkedTo,
        _organizationLinkedToID = organizationLinkedToID,
        super(firestoreUtilData);

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  set company(String? val) => _company = val;
  bool hasCompany() => _company != null;

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

  // "isPresent" field.
  bool? _isPresent;
  bool get isPresent => _isPresent ?? false;
  set isPresent(bool? val) => _isPresent = val;
  bool hasIsPresent() => _isPresent != null;

  // "workExpereince" field.
  String? _workExpereince;
  String get workExpereince => _workExpereince ?? '';
  set workExpereince(String? val) => _workExpereince = val;
  bool hasWorkExpereince() => _workExpereince != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  set position(String? val) => _position = val;
  bool hasPosition() => _position != null;

  // "isLinkedOrganization" field.
  bool? _isLinkedOrganization;
  bool get isLinkedOrganization => _isLinkedOrganization ?? false;
  set isLinkedOrganization(bool? val) => _isLinkedOrganization = val;
  bool hasIsLinkedOrganization() => _isLinkedOrganization != null;

  // "organizationLinkedTo" field.
  String? _organizationLinkedTo;
  String get organizationLinkedTo => _organizationLinkedTo ?? '';
  set organizationLinkedTo(String? val) => _organizationLinkedTo = val;
  bool hasOrganizationLinkedTo() => _organizationLinkedTo != null;

  // "organizationLinkedToID" field.
  DocumentReference? _organizationLinkedToID;
  DocumentReference? get organizationLinkedToID => _organizationLinkedToID;
  set organizationLinkedToID(DocumentReference? val) =>
      _organizationLinkedToID = val;
  bool hasOrganizationLinkedToID() => _organizationLinkedToID != null;

  static WorkExpereinceStruct fromMap(Map<String, dynamic> data) =>
      WorkExpereinceStruct(
        company: data['company'] as String?,
        fromDate: data['fromDate'] as DateTime?,
        toDate: data['toDate'] as DateTime?,
        isPresent: data['isPresent'] as bool?,
        workExpereince: data['workExpereince'] as String?,
        position: data['position'] as String?,
        isLinkedOrganization: data['isLinkedOrganization'] as bool?,
        organizationLinkedTo: data['organizationLinkedTo'] as String?,
        organizationLinkedToID:
            data['organizationLinkedToID'] as DocumentReference?,
      );

  static WorkExpereinceStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? WorkExpereinceStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'company': _company,
        'fromDate': _fromDate,
        'toDate': _toDate,
        'isPresent': _isPresent,
        'workExpereince': _workExpereince,
        'position': _position,
        'isLinkedOrganization': _isLinkedOrganization,
        'organizationLinkedTo': _organizationLinkedTo,
        'organizationLinkedToID': _organizationLinkedToID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'company': serializeParam(
          _company,
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
        'isPresent': serializeParam(
          _isPresent,
          ParamType.bool,
        ),
        'workExpereince': serializeParam(
          _workExpereince,
          ParamType.String,
        ),
        'position': serializeParam(
          _position,
          ParamType.String,
        ),
        'isLinkedOrganization': serializeParam(
          _isLinkedOrganization,
          ParamType.bool,
        ),
        'organizationLinkedTo': serializeParam(
          _organizationLinkedTo,
          ParamType.String,
        ),
        'organizationLinkedToID': serializeParam(
          _organizationLinkedToID,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static WorkExpereinceStruct fromSerializableMap(Map<String, dynamic> data) =>
      WorkExpereinceStruct(
        company: deserializeParam(
          data['company'],
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
        isPresent: deserializeParam(
          data['isPresent'],
          ParamType.bool,
          false,
        ),
        workExpereince: deserializeParam(
          data['workExpereince'],
          ParamType.String,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.String,
          false,
        ),
        isLinkedOrganization: deserializeParam(
          data['isLinkedOrganization'],
          ParamType.bool,
          false,
        ),
        organizationLinkedTo: deserializeParam(
          data['organizationLinkedTo'],
          ParamType.String,
          false,
        ),
        organizationLinkedToID: deserializeParam(
          data['organizationLinkedToID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['recruiters'],
        ),
      );

  @override
  String toString() => 'WorkExpereinceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WorkExpereinceStruct &&
        company == other.company &&
        fromDate == other.fromDate &&
        toDate == other.toDate &&
        isPresent == other.isPresent &&
        workExpereince == other.workExpereince &&
        position == other.position &&
        isLinkedOrganization == other.isLinkedOrganization &&
        organizationLinkedTo == other.organizationLinkedTo &&
        organizationLinkedToID == other.organizationLinkedToID;
  }

  @override
  int get hashCode => const ListEquality().hash([
        company,
        fromDate,
        toDate,
        isPresent,
        workExpereince,
        position,
        isLinkedOrganization,
        organizationLinkedTo,
        organizationLinkedToID
      ]);
}

WorkExpereinceStruct createWorkExpereinceStruct({
  String? company,
  DateTime? fromDate,
  DateTime? toDate,
  bool? isPresent,
  String? workExpereince,
  String? position,
  bool? isLinkedOrganization,
  String? organizationLinkedTo,
  DocumentReference? organizationLinkedToID,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WorkExpereinceStruct(
      company: company,
      fromDate: fromDate,
      toDate: toDate,
      isPresent: isPresent,
      workExpereince: workExpereince,
      position: position,
      isLinkedOrganization: isLinkedOrganization,
      organizationLinkedTo: organizationLinkedTo,
      organizationLinkedToID: organizationLinkedToID,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WorkExpereinceStruct? updateWorkExpereinceStruct(
  WorkExpereinceStruct? workExpereince, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    workExpereince
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWorkExpereinceStructData(
  Map<String, dynamic> firestoreData,
  WorkExpereinceStruct? workExpereince,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (workExpereince == null) {
    return;
  }
  if (workExpereince.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && workExpereince.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final workExpereinceData =
      getWorkExpereinceFirestoreData(workExpereince, forFieldValue);
  final nestedData =
      workExpereinceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = workExpereince.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWorkExpereinceFirestoreData(
  WorkExpereinceStruct? workExpereince, [
  bool forFieldValue = false,
]) {
  if (workExpereince == null) {
    return {};
  }
  final firestoreData = mapToFirestore(workExpereince.toMap());

  // Add any Firestore field values
  workExpereince.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWorkExpereinceListFirestoreData(
  List<WorkExpereinceStruct>? workExpereinces,
) =>
    workExpereinces
        ?.map((e) => getWorkExpereinceFirestoreData(e, true))
        .toList() ??
    [];
