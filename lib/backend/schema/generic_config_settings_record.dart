import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GenericConfigSettingsRecord extends FirestoreRecord {
  GenericConfigSettingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "subjectNames" field.
  List<String>? _subjectNames;
  List<String> get subjectNames => _subjectNames ?? const [];
  bool hasSubjectNames() => _subjectNames != null;

  void _initializeFields() {
    _subjectNames = getDataList(snapshotData['subjectNames']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('genericConfigSettings');

  static Stream<GenericConfigSettingsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => GenericConfigSettingsRecord.fromSnapshot(s));

  static Future<GenericConfigSettingsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => GenericConfigSettingsRecord.fromSnapshot(s));

  static GenericConfigSettingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GenericConfigSettingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GenericConfigSettingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GenericConfigSettingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GenericConfigSettingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GenericConfigSettingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGenericConfigSettingsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}
