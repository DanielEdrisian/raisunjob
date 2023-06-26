import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SavedProfileRecord extends FirestoreRecord {
  SavedProfileRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "candidateProfile" field.
  CandidateProfileStruct? _candidateProfile;
  CandidateProfileStruct get candidateProfile =>
      _candidateProfile ?? CandidateProfileStruct();
  bool hasCandidateProfile() => _candidateProfile != null;

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _candidateProfile =
        CandidateProfileStruct.maybeFromMap(snapshotData['candidateProfile']);
    _dateTime = snapshotData['dateTime'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('savedProfile')
          : FirebaseFirestore.instance.collectionGroup('savedProfile');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('savedProfile').doc();

  static Stream<SavedProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SavedProfileRecord.fromSnapshot(s));

  static Future<SavedProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SavedProfileRecord.fromSnapshot(s));

  static SavedProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SavedProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SavedProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SavedProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SavedProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SavedProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSavedProfileRecordData({
  CandidateProfileStruct? candidateProfile,
  DateTime? dateTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'candidateProfile': CandidateProfileStruct().toMap(),
      'dateTime': dateTime,
    }.withoutNulls,
  );

  // Handle nested data for "candidateProfile" field.
  addCandidateProfileStructData(
      firestoreData, candidateProfile, 'candidateProfile');

  return firestoreData;
}
