// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecruitersStruct extends FFFirebaseStruct {
  RecruitersStruct({
    String? recruiterBusinessName,
    DocumentReference? recruiterOwnerID,
    List<DocumentReference>? recruiterHasAccessList,
    LatLng? recruiterBusinessLocation,
    AddressStruct? recruiterBusinessAddress,
    String? recruiterBusinessType,
    String? city,
    DocumentReference? recruiterReference,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _recruiterBusinessName = recruiterBusinessName,
        _recruiterOwnerID = recruiterOwnerID,
        _recruiterHasAccessList = recruiterHasAccessList,
        _recruiterBusinessLocation = recruiterBusinessLocation,
        _recruiterBusinessAddress = recruiterBusinessAddress,
        _recruiterBusinessType = recruiterBusinessType,
        _city = city,
        _recruiterReference = recruiterReference,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "recruiterBusinessName" field.
  String? _recruiterBusinessName;
  String get recruiterBusinessName => _recruiterBusinessName ?? '';
  set recruiterBusinessName(String? val) => _recruiterBusinessName = val;
  bool hasRecruiterBusinessName() => _recruiterBusinessName != null;

  // "recruiterOwnerID" field.
  DocumentReference? _recruiterOwnerID;
  DocumentReference? get recruiterOwnerID => _recruiterOwnerID;
  set recruiterOwnerID(DocumentReference? val) => _recruiterOwnerID = val;
  bool hasRecruiterOwnerID() => _recruiterOwnerID != null;

  // "recruiterHasAccessList" field.
  List<DocumentReference>? _recruiterHasAccessList;
  List<DocumentReference> get recruiterHasAccessList =>
      _recruiterHasAccessList ?? const [];
  set recruiterHasAccessList(List<DocumentReference>? val) =>
      _recruiterHasAccessList = val;
  void updateRecruiterHasAccessList(
          Function(List<DocumentReference>) updateFn) =>
      updateFn(_recruiterHasAccessList ??= []);
  bool hasRecruiterHasAccessList() => _recruiterHasAccessList != null;

  // "recruiterBusinessLocation" field.
  LatLng? _recruiterBusinessLocation;
  LatLng? get recruiterBusinessLocation => _recruiterBusinessLocation;
  set recruiterBusinessLocation(LatLng? val) =>
      _recruiterBusinessLocation = val;
  bool hasRecruiterBusinessLocation() => _recruiterBusinessLocation != null;

  // "recruiterBusinessAddress" field.
  AddressStruct? _recruiterBusinessAddress;
  AddressStruct get recruiterBusinessAddress =>
      _recruiterBusinessAddress ?? AddressStruct();
  set recruiterBusinessAddress(AddressStruct? val) =>
      _recruiterBusinessAddress = val;
  void updateRecruiterBusinessAddress(Function(AddressStruct) updateFn) =>
      updateFn(_recruiterBusinessAddress ??= AddressStruct());
  bool hasRecruiterBusinessAddress() => _recruiterBusinessAddress != null;

  // "recruiterBusinessType" field.
  String? _recruiterBusinessType;
  String get recruiterBusinessType => _recruiterBusinessType ?? '';
  set recruiterBusinessType(String? val) => _recruiterBusinessType = val;
  bool hasRecruiterBusinessType() => _recruiterBusinessType != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "recruiterReference" field.
  DocumentReference? _recruiterReference;
  DocumentReference? get recruiterReference => _recruiterReference;
  set recruiterReference(DocumentReference? val) => _recruiterReference = val;
  bool hasRecruiterReference() => _recruiterReference != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  set updatedAt(DateTime? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  static RecruitersStruct fromMap(Map<String, dynamic> data) =>
      RecruitersStruct(
        recruiterBusinessName: data['recruiterBusinessName'] as String?,
        recruiterOwnerID: data['recruiterOwnerID'] as DocumentReference?,
        recruiterHasAccessList: getDataList(data['recruiterHasAccessList']),
        recruiterBusinessLocation: data['recruiterBusinessLocation'] as LatLng?,
        recruiterBusinessAddress:
            AddressStruct.maybeFromMap(data['recruiterBusinessAddress']),
        recruiterBusinessType: data['recruiterBusinessType'] as String?,
        city: data['city'] as String?,
        recruiterReference: data['recruiterReference'] as DocumentReference?,
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static RecruitersStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RecruitersStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'recruiterBusinessName': _recruiterBusinessName,
        'recruiterOwnerID': _recruiterOwnerID,
        'recruiterHasAccessList': _recruiterHasAccessList,
        'recruiterBusinessLocation': _recruiterBusinessLocation,
        'recruiterBusinessAddress': _recruiterBusinessAddress?.toMap(),
        'recruiterBusinessType': _recruiterBusinessType,
        'city': _city,
        'recruiterReference': _recruiterReference,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'recruiterBusinessName': serializeParam(
          _recruiterBusinessName,
          ParamType.String,
        ),
        'recruiterOwnerID': serializeParam(
          _recruiterOwnerID,
          ParamType.DocumentReference,
        ),
        'recruiterHasAccessList': serializeParam(
          _recruiterHasAccessList,
          ParamType.DocumentReference,
          true,
        ),
        'recruiterBusinessLocation': serializeParam(
          _recruiterBusinessLocation,
          ParamType.LatLng,
        ),
        'recruiterBusinessAddress': serializeParam(
          _recruiterBusinessAddress,
          ParamType.DataStruct,
        ),
        'recruiterBusinessType': serializeParam(
          _recruiterBusinessType,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'recruiterReference': serializeParam(
          _recruiterReference,
          ParamType.DocumentReference,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static RecruitersStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecruitersStruct(
        recruiterBusinessName: deserializeParam(
          data['recruiterBusinessName'],
          ParamType.String,
          false,
        ),
        recruiterOwnerID: deserializeParam(
          data['recruiterOwnerID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        recruiterHasAccessList: deserializeParam<DocumentReference>(
          data['recruiterHasAccessList'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['users'],
        ),
        recruiterBusinessLocation: deserializeParam(
          data['recruiterBusinessLocation'],
          ParamType.LatLng,
          false,
        ),
        recruiterBusinessAddress: deserializeStructParam(
          data['recruiterBusinessAddress'],
          ParamType.DataStruct,
          false,
          structBuilder: AddressStruct.fromSerializableMap,
        ),
        recruiterBusinessType: deserializeParam(
          data['recruiterBusinessType'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        recruiterReference: deserializeParam(
          data['recruiterReference'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['recruiters'],
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.DateTime,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'RecruitersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RecruitersStruct &&
        recruiterBusinessName == other.recruiterBusinessName &&
        recruiterOwnerID == other.recruiterOwnerID &&
        listEquality.equals(
            recruiterHasAccessList, other.recruiterHasAccessList) &&
        recruiterBusinessLocation == other.recruiterBusinessLocation &&
        recruiterBusinessAddress == other.recruiterBusinessAddress &&
        recruiterBusinessType == other.recruiterBusinessType &&
        city == other.city &&
        recruiterReference == other.recruiterReference &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        recruiterBusinessName,
        recruiterOwnerID,
        recruiterHasAccessList,
        recruiterBusinessLocation,
        recruiterBusinessAddress,
        recruiterBusinessType,
        city,
        recruiterReference,
        createdAt,
        updatedAt
      ]);
}

RecruitersStruct createRecruitersStruct({
  String? recruiterBusinessName,
  DocumentReference? recruiterOwnerID,
  LatLng? recruiterBusinessLocation,
  AddressStruct? recruiterBusinessAddress,
  String? recruiterBusinessType,
  String? city,
  DocumentReference? recruiterReference,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecruitersStruct(
      recruiterBusinessName: recruiterBusinessName,
      recruiterOwnerID: recruiterOwnerID,
      recruiterBusinessLocation: recruiterBusinessLocation,
      recruiterBusinessAddress: recruiterBusinessAddress ?? AddressStruct(),
      recruiterBusinessType: recruiterBusinessType,
      city: city,
      recruiterReference: recruiterReference,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecruitersStruct? updateRecruitersStruct(
  RecruitersStruct? recruiters, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    recruiters
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecruitersStructData(
  Map<String, dynamic> firestoreData,
  RecruitersStruct? recruiters,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (recruiters == null) {
    return;
  }
  if (recruiters.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && recruiters.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recruitersData = getRecruitersFirestoreData(recruiters, forFieldValue);
  final nestedData = recruitersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = recruiters.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecruitersFirestoreData(
  RecruitersStruct? recruiters, [
  bool forFieldValue = false,
]) {
  if (recruiters == null) {
    return {};
  }
  final firestoreData = mapToFirestore(recruiters.toMap());

  // Handle nested data for "recruiterBusinessAddress" field.
  addAddressStructData(firestoreData, recruiters.recruiterBusinessAddress,
      'recruiterBusinessAddress', forFieldValue);

  // Add any Firestore field values
  recruiters.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecruitersListFirestoreData(
  List<RecruitersStruct>? recruiterss,
) =>
    recruiterss?.map((e) => getRecruitersFirestoreData(e, true)).toList() ?? [];
