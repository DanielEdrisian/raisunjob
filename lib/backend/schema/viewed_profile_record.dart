import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ViewedProfileRecord extends FirestoreRecord {
  ViewedProfileRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "candidate" field.
  CandidateProfileStruct? _candidate;
  CandidateProfileStruct get candidate =>
      _candidate ?? CandidateProfileStruct();
  bool hasCandidate() => _candidate != null;

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _candidate = CandidateProfileStruct.maybeFromMap(snapshotData['candidate']);
    _dateTime = snapshotData['dateTime'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('viewedProfile')
          : FirebaseFirestore.instance.collectionGroup('viewedProfile');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('viewedProfile').doc();

  static Stream<ViewedProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ViewedProfileRecord.fromSnapshot(s));

  static Future<ViewedProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ViewedProfileRecord.fromSnapshot(s));

  static ViewedProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ViewedProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ViewedProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ViewedProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ViewedProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ViewedProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createViewedProfileRecordData({
  CandidateProfileStruct? candidate,
  DateTime? dateTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'candidate': CandidateProfileStruct().toMap(),
      'dateTime': dateTime,
    }.withoutNulls,
  );

  // Handle nested data for "candidate" field.
  addCandidateProfileStructData(firestoreData, candidate, 'candidate');

  return firestoreData;
}
