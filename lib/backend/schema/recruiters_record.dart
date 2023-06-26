import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecruitersRecord extends FirestoreRecord {
  RecruitersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "recruiterBusinessnName" field.
  String? _recruiterBusinessnName;
  String get recruiterBusinessnName => _recruiterBusinessnName ?? '';
  bool hasRecruiterBusinessnName() => _recruiterBusinessnName != null;

  // "recruiterOwnerID" field.
  DocumentReference? _recruiterOwnerID;
  DocumentReference? get recruiterOwnerID => _recruiterOwnerID;
  bool hasRecruiterOwnerID() => _recruiterOwnerID != null;

  // "recruiterHasAccessList" field.
  List<DocumentReference>? _recruiterHasAccessList;
  List<DocumentReference> get recruiterHasAccessList =>
      _recruiterHasAccessList ?? const [];
  bool hasRecruiterHasAccessList() => _recruiterHasAccessList != null;

  // "recuruiterBusinessLocation" field.
  LatLng? _recuruiterBusinessLocation;
  LatLng? get recuruiterBusinessLocation => _recuruiterBusinessLocation;
  bool hasRecuruiterBusinessLocation() => _recuruiterBusinessLocation != null;

  // "recruiterBusinessAddress" field.
  AddressStruct? _recruiterBusinessAddress;
  AddressStruct get recruiterBusinessAddress =>
      _recruiterBusinessAddress ?? AddressStruct();
  bool hasRecruiterBusinessAddress() => _recruiterBusinessAddress != null;

  // "recruiterBusinessType" field.
  String? _recruiterBusinessType;
  String get recruiterBusinessType => _recruiterBusinessType ?? '';
  bool hasRecruiterBusinessType() => _recruiterBusinessType != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "jobsPosted" field.
  List<JobsStruct>? _jobsPosted;
  List<JobsStruct> get jobsPosted => _jobsPosted ?? const [];
  bool hasJobsPosted() => _jobsPosted != null;

  void _initializeFields() {
    _recruiterBusinessnName = snapshotData['recruiterBusinessnName'] as String?;
    _recruiterOwnerID = snapshotData['recruiterOwnerID'] as DocumentReference?;
    _recruiterHasAccessList =
        getDataList(snapshotData['recruiterHasAccessList']);
    _recuruiterBusinessLocation =
        snapshotData['recuruiterBusinessLocation'] as LatLng?;
    _recruiterBusinessAddress =
        AddressStruct.maybeFromMap(snapshotData['recruiterBusinessAddress']);
    _recruiterBusinessType = snapshotData['recruiterBusinessType'] as String?;
    _city = snapshotData['city'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _jobsPosted = getStructList(
      snapshotData['jobsPosted'],
      JobsStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recruiters');

  static Stream<RecruitersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecruitersRecord.fromSnapshot(s));

  static Future<RecruitersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecruitersRecord.fromSnapshot(s));

  static RecruitersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecruitersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecruitersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecruitersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecruitersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecruitersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecruitersRecordData({
  String? recruiterBusinessnName,
  DocumentReference? recruiterOwnerID,
  LatLng? recuruiterBusinessLocation,
  AddressStruct? recruiterBusinessAddress,
  String? recruiterBusinessType,
  String? city,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recruiterBusinessnName': recruiterBusinessnName,
      'recruiterOwnerID': recruiterOwnerID,
      'recuruiterBusinessLocation': recuruiterBusinessLocation,
      'recruiterBusinessAddress': AddressStruct().toMap(),
      'recruiterBusinessType': recruiterBusinessType,
      'city': city,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    }.withoutNulls,
  );

  // Handle nested data for "recruiterBusinessAddress" field.
  addAddressStructData(
      firestoreData, recruiterBusinessAddress, 'recruiterBusinessAddress');

  return firestoreData;
}
