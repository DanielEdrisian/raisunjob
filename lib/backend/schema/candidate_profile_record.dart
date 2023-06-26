import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CandidateProfileRecord extends FirestoreRecord {
  CandidateProfileRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "candidateName" field.
  String? _candidateName;
  String get candidateName => _candidateName ?? '';
  bool hasCandidateName() => _candidateName != null;

  // "candidateImage" field.
  String? _candidateImage;
  String get candidateImage => _candidateImage ?? '';
  bool hasCandidateImage() => _candidateImage != null;

  // "candidateUID" field.
  String? _candidateUID;
  String get candidateUID => _candidateUID ?? '';
  bool hasCandidateUID() => _candidateUID != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "addressDetail" field.
  AddressStruct? _addressDetail;
  AddressStruct get addressDetail => _addressDetail ?? AddressStruct();
  bool hasAddressDetail() => _addressDetail != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "dateBirth" field.
  DateTime? _dateBirth;
  DateTime? get dateBirth => _dateBirth;
  bool hasDateBirth() => _dateBirth != null;

  // "candidateUserReference" field.
  DocumentReference? _candidateUserReference;
  DocumentReference? get candidateUserReference => _candidateUserReference;
  bool hasCandidateUserReference() => _candidateUserReference != null;

  // "facets" field.
  List<String>? _facets;
  List<String> get facets => _facets ?? const [];
  bool hasFacets() => _facets != null;

  // "organizationsLikedYou" field.
  List<DocumentReference>? _organizationsLikedYou;
  List<DocumentReference> get organizationsLikedYou =>
      _organizationsLikedYou ?? const [];
  bool hasOrganizationsLikedYou() => _organizationsLikedYou != null;

  // "resumeFileURL" field.
  String? _resumeFileURL;
  String get resumeFileURL => _resumeFileURL ?? '';
  bool hasResumeFileURL() => _resumeFileURL != null;

  // "maritalStatus" field.
  String? _maritalStatus;
  String get maritalStatus => _maritalStatus ?? '';
  bool hasMaritalStatus() => _maritalStatus != null;

  // "motherTongue" field.
  String? _motherTongue;
  String get motherTongue => _motherTongue ?? '';
  bool hasMotherTongue() => _motherTongue != null;

  // "languageSpoken" field.
  List<String>? _languageSpoken;
  List<String> get languageSpoken => _languageSpoken ?? const [];
  bool hasLanguageSpoken() => _languageSpoken != null;

  // "workExperience" field.
  List<WorkExpereinceStruct>? _workExperience;
  List<WorkExpereinceStruct> get workExperience => _workExperience ?? const [];
  bool hasWorkExperience() => _workExperience != null;

  // "educationList" field.
  List<EducationQualificationStruct>? _educationList;
  List<EducationQualificationStruct> get educationList =>
      _educationList ?? const [];
  bool hasEducationList() => _educationList != null;

  // "allowCall" field.
  bool? _allowCall;
  bool get allowCall => _allowCall ?? false;
  bool hasAllowCall() => _allowCall != null;

  // "numberCall" field.
  String? _numberCall;
  String get numberCall => _numberCall ?? '';
  bool hasNumberCall() => _numberCall != null;

  void _initializeFields() {
    _candidateName = snapshotData['candidateName'] as String?;
    _candidateImage = snapshotData['candidateImage'] as String?;
    _candidateUID = snapshotData['candidateUID'] as String?;
    _gender = snapshotData['gender'] as String?;
    _addressDetail = AddressStruct.maybeFromMap(snapshotData['addressDetail']);
    _location = snapshotData['location'] as LatLng?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _dateBirth = snapshotData['dateBirth'] as DateTime?;
    _candidateUserReference =
        snapshotData['candidateUserReference'] as DocumentReference?;
    _facets = getDataList(snapshotData['facets']);
    _organizationsLikedYou = getDataList(snapshotData['organizationsLikedYou']);
    _resumeFileURL = snapshotData['resumeFileURL'] as String?;
    _maritalStatus = snapshotData['maritalStatus'] as String?;
    _motherTongue = snapshotData['motherTongue'] as String?;
    _languageSpoken = getDataList(snapshotData['languageSpoken']);
    _workExperience = getStructList(
      snapshotData['workExperience'],
      WorkExpereinceStruct.fromMap,
    );
    _educationList = getStructList(
      snapshotData['educationList'],
      EducationQualificationStruct.fromMap,
    );
    _allowCall = snapshotData['allowCall'] as bool?;
    _numberCall = snapshotData['numberCall'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('candidateProfile');

  static Stream<CandidateProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CandidateProfileRecord.fromSnapshot(s));

  static Future<CandidateProfileRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CandidateProfileRecord.fromSnapshot(s));

  static CandidateProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CandidateProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CandidateProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CandidateProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CandidateProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CandidateProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCandidateProfileRecordData({
  String? candidateName,
  String? candidateImage,
  String? candidateUID,
  String? gender,
  AddressStruct? addressDetail,
  LatLng? location,
  DateTime? createdAt,
  DateTime? updatedAt,
  DateTime? dateBirth,
  DocumentReference? candidateUserReference,
  String? resumeFileURL,
  String? maritalStatus,
  String? motherTongue,
  bool? allowCall,
  String? numberCall,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'candidateName': candidateName,
      'candidateImage': candidateImage,
      'candidateUID': candidateUID,
      'gender': gender,
      'addressDetail': AddressStruct().toMap(),
      'location': location,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'dateBirth': dateBirth,
      'candidateUserReference': candidateUserReference,
      'resumeFileURL': resumeFileURL,
      'maritalStatus': maritalStatus,
      'motherTongue': motherTongue,
      'allowCall': allowCall,
      'numberCall': numberCall,
    }.withoutNulls,
  );

  // Handle nested data for "addressDetail" field.
  addAddressStructData(firestoreData, addressDetail, 'addressDetail');

  return firestoreData;
}
