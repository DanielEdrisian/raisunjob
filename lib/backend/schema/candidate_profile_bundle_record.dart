import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CandidateProfileBundleRecord extends FirestoreRecord {
  CandidateProfileBundleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "candidateList" field.
  List<CandidateProfileStruct>? _candidateList;
  List<CandidateProfileStruct> get candidateList => _candidateList ?? const [];
  bool hasCandidateList() => _candidateList != null;

  // "section" field.
  int? _section;
  int get section => _section ?? 0;
  bool hasSection() => _section != null;

  // "educationLevel" field.
  String? _educationLevel;
  String get educationLevel => _educationLevel ?? '';
  bool hasEducationLevel() => _educationLevel != null;

  void _initializeFields() {
    _candidateList = getStructList(
      snapshotData['candidateList'],
      CandidateProfileStruct.fromMap,
    );
    _section = castToType<int>(snapshotData['section']);
    _educationLevel = snapshotData['educationLevel'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('candidateProfileBundle');

  static Stream<CandidateProfileBundleRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => CandidateProfileBundleRecord.fromSnapshot(s));

  static Future<CandidateProfileBundleRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CandidateProfileBundleRecord.fromSnapshot(s));

  static CandidateProfileBundleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CandidateProfileBundleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CandidateProfileBundleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CandidateProfileBundleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CandidateProfileBundleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CandidateProfileBundleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCandidateProfileBundleRecordData({
  int? section,
  String? educationLevel,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'section': section,
      'educationLevel': educationLevel,
    }.withoutNulls,
  );

  return firestoreData;
}
