// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CandidateProfileStruct extends FFFirebaseStruct {
  CandidateProfileStruct({
    String? candidateName,
    DocumentReference? candidateReference,
    String? candidateImage,
    DocumentReference? candidateUserRef,
    String? candidateUID,
    String? gender,
    AddressStruct? addressDetail,
    LatLng? location,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? dateBirth,
    DocumentReference? candidateUserReference,
    List<String>? facets,
    List<DocumentReference>? organizationsLikedYou,
    String? resumeFileURL,
    String? maritalStatus,
    String? motherTongue,
    List<String>? languageSpoken,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _candidateName = candidateName,
        _candidateReference = candidateReference,
        _candidateImage = candidateImage,
        _candidateUserRef = candidateUserRef,
        _candidateUID = candidateUID,
        _gender = gender,
        _addressDetail = addressDetail,
        _location = location,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _dateBirth = dateBirth,
        _candidateUserReference = candidateUserReference,
        _facets = facets,
        _organizationsLikedYou = organizationsLikedYou,
        _resumeFileURL = resumeFileURL,
        _maritalStatus = maritalStatus,
        _motherTongue = motherTongue,
        _languageSpoken = languageSpoken,
        super(firestoreUtilData);

  // "candidateName" field.
  String? _candidateName;
  String get candidateName => _candidateName ?? '';
  set candidateName(String? val) => _candidateName = val;
  bool hasCandidateName() => _candidateName != null;

  // "candidateReference" field.
  DocumentReference? _candidateReference;
  DocumentReference? get candidateReference => _candidateReference;
  set candidateReference(DocumentReference? val) => _candidateReference = val;
  bool hasCandidateReference() => _candidateReference != null;

  // "candidateImage" field.
  String? _candidateImage;
  String get candidateImage => _candidateImage ?? '';
  set candidateImage(String? val) => _candidateImage = val;
  bool hasCandidateImage() => _candidateImage != null;

  // "candidateUserRef" field.
  DocumentReference? _candidateUserRef;
  DocumentReference? get candidateUserRef => _candidateUserRef;
  set candidateUserRef(DocumentReference? val) => _candidateUserRef = val;
  bool hasCandidateUserRef() => _candidateUserRef != null;

  // "candidateUID" field.
  String? _candidateUID;
  String get candidateUID => _candidateUID ?? '';
  set candidateUID(String? val) => _candidateUID = val;
  bool hasCandidateUID() => _candidateUID != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;
  bool hasGender() => _gender != null;

  // "addressDetail" field.
  AddressStruct? _addressDetail;
  AddressStruct get addressDetail => _addressDetail ?? AddressStruct();
  set addressDetail(AddressStruct? val) => _addressDetail = val;
  void updateAddressDetail(Function(AddressStruct) updateFn) =>
      updateFn(_addressDetail ??= AddressStruct());
  bool hasAddressDetail() => _addressDetail != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  set location(LatLng? val) => _location = val;
  bool hasLocation() => _location != null;

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

  // "dateBirth" field.
  DateTime? _dateBirth;
  DateTime? get dateBirth => _dateBirth;
  set dateBirth(DateTime? val) => _dateBirth = val;
  bool hasDateBirth() => _dateBirth != null;

  // "candidateUserReference" field.
  DocumentReference? _candidateUserReference;
  DocumentReference? get candidateUserReference => _candidateUserReference;
  set candidateUserReference(DocumentReference? val) =>
      _candidateUserReference = val;
  bool hasCandidateUserReference() => _candidateUserReference != null;

  // "facets" field.
  List<String>? _facets;
  List<String> get facets => _facets ?? const [];
  set facets(List<String>? val) => _facets = val;
  void updateFacets(Function(List<String>) updateFn) =>
      updateFn(_facets ??= []);
  bool hasFacets() => _facets != null;

  // "organizationsLikedYou" field.
  List<DocumentReference>? _organizationsLikedYou;
  List<DocumentReference> get organizationsLikedYou =>
      _organizationsLikedYou ?? const [];
  set organizationsLikedYou(List<DocumentReference>? val) =>
      _organizationsLikedYou = val;
  void updateOrganizationsLikedYou(
          Function(List<DocumentReference>) updateFn) =>
      updateFn(_organizationsLikedYou ??= []);
  bool hasOrganizationsLikedYou() => _organizationsLikedYou != null;

  // "resumeFileURL" field.
  String? _resumeFileURL;
  String get resumeFileURL => _resumeFileURL ?? '';
  set resumeFileURL(String? val) => _resumeFileURL = val;
  bool hasResumeFileURL() => _resumeFileURL != null;

  // "maritalStatus" field.
  String? _maritalStatus;
  String get maritalStatus => _maritalStatus ?? '';
  set maritalStatus(String? val) => _maritalStatus = val;
  bool hasMaritalStatus() => _maritalStatus != null;

  // "motherTongue" field.
  String? _motherTongue;
  String get motherTongue => _motherTongue ?? '';
  set motherTongue(String? val) => _motherTongue = val;
  bool hasMotherTongue() => _motherTongue != null;

  // "languageSpoken" field.
  List<String>? _languageSpoken;
  List<String> get languageSpoken => _languageSpoken ?? const [];
  set languageSpoken(List<String>? val) => _languageSpoken = val;
  void updateLanguageSpoken(Function(List<String>) updateFn) =>
      updateFn(_languageSpoken ??= []);
  bool hasLanguageSpoken() => _languageSpoken != null;

  static CandidateProfileStruct fromMap(Map<String, dynamic> data) =>
      CandidateProfileStruct(
        candidateName: data['candidateName'] as String?,
        candidateReference: data['candidateReference'] as DocumentReference?,
        candidateImage: data['candidateImage'] as String?,
        candidateUserRef: data['candidateUserRef'] as DocumentReference?,
        candidateUID: data['candidateUID'] as String?,
        gender: data['gender'] as String?,
        addressDetail: AddressStruct.maybeFromMap(data['addressDetail']),
        location: data['location'] as LatLng?,
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
        dateBirth: data['dateBirth'] as DateTime?,
        candidateUserReference:
            data['candidateUserReference'] as DocumentReference?,
        facets: getDataList(data['facets']),
        organizationsLikedYou: getDataList(data['organizationsLikedYou']),
        resumeFileURL: data['resumeFileURL'] as String?,
        maritalStatus: data['maritalStatus'] as String?,
        motherTongue: data['motherTongue'] as String?,
        languageSpoken: getDataList(data['languageSpoken']),
      );

  static CandidateProfileStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? CandidateProfileStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'candidateName': _candidateName,
        'candidateReference': _candidateReference,
        'candidateImage': _candidateImage,
        'candidateUserRef': _candidateUserRef,
        'candidateUID': _candidateUID,
        'gender': _gender,
        'addressDetail': _addressDetail?.toMap(),
        'location': _location,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'dateBirth': _dateBirth,
        'candidateUserReference': _candidateUserReference,
        'facets': _facets,
        'organizationsLikedYou': _organizationsLikedYou,
        'resumeFileURL': _resumeFileURL,
        'maritalStatus': _maritalStatus,
        'motherTongue': _motherTongue,
        'languageSpoken': _languageSpoken,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'candidateName': serializeParam(
          _candidateName,
          ParamType.String,
        ),
        'candidateReference': serializeParam(
          _candidateReference,
          ParamType.DocumentReference,
        ),
        'candidateImage': serializeParam(
          _candidateImage,
          ParamType.String,
        ),
        'candidateUserRef': serializeParam(
          _candidateUserRef,
          ParamType.DocumentReference,
        ),
        'candidateUID': serializeParam(
          _candidateUID,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'addressDetail': serializeParam(
          _addressDetail,
          ParamType.DataStruct,
        ),
        'location': serializeParam(
          _location,
          ParamType.LatLng,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.DateTime,
        ),
        'dateBirth': serializeParam(
          _dateBirth,
          ParamType.DateTime,
        ),
        'candidateUserReference': serializeParam(
          _candidateUserReference,
          ParamType.DocumentReference,
        ),
        'facets': serializeParam(
          _facets,
          ParamType.String,
          true,
        ),
        'organizationsLikedYou': serializeParam(
          _organizationsLikedYou,
          ParamType.DocumentReference,
          true,
        ),
        'resumeFileURL': serializeParam(
          _resumeFileURL,
          ParamType.String,
        ),
        'maritalStatus': serializeParam(
          _maritalStatus,
          ParamType.String,
        ),
        'motherTongue': serializeParam(
          _motherTongue,
          ParamType.String,
        ),
        'languageSpoken': serializeParam(
          _languageSpoken,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static CandidateProfileStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CandidateProfileStruct(
        candidateName: deserializeParam(
          data['candidateName'],
          ParamType.String,
          false,
        ),
        candidateReference: deserializeParam(
          data['candidateReference'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['candidateProfile'],
        ),
        candidateImage: deserializeParam(
          data['candidateImage'],
          ParamType.String,
          false,
        ),
        candidateUserRef: deserializeParam(
          data['candidateUserRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        candidateUID: deserializeParam(
          data['candidateUID'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        addressDetail: deserializeStructParam(
          data['addressDetail'],
          ParamType.DataStruct,
          false,
          structBuilder: AddressStruct.fromSerializableMap,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.LatLng,
          false,
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
        dateBirth: deserializeParam(
          data['dateBirth'],
          ParamType.DateTime,
          false,
        ),
        candidateUserReference: deserializeParam(
          data['candidateUserReference'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        facets: deserializeParam<String>(
          data['facets'],
          ParamType.String,
          true,
        ),
        organizationsLikedYou: deserializeParam<DocumentReference>(
          data['organizationsLikedYou'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['recruiters'],
        ),
        resumeFileURL: deserializeParam(
          data['resumeFileURL'],
          ParamType.String,
          false,
        ),
        maritalStatus: deserializeParam(
          data['maritalStatus'],
          ParamType.String,
          false,
        ),
        motherTongue: deserializeParam(
          data['motherTongue'],
          ParamType.String,
          false,
        ),
        languageSpoken: deserializeParam<String>(
          data['languageSpoken'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'CandidateProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CandidateProfileStruct &&
        candidateName == other.candidateName &&
        candidateReference == other.candidateReference &&
        candidateImage == other.candidateImage &&
        candidateUserRef == other.candidateUserRef &&
        candidateUID == other.candidateUID &&
        gender == other.gender &&
        addressDetail == other.addressDetail &&
        location == other.location &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        dateBirth == other.dateBirth &&
        candidateUserReference == other.candidateUserReference &&
        listEquality.equals(facets, other.facets) &&
        listEquality.equals(
            organizationsLikedYou, other.organizationsLikedYou) &&
        resumeFileURL == other.resumeFileURL &&
        maritalStatus == other.maritalStatus &&
        motherTongue == other.motherTongue &&
        listEquality.equals(languageSpoken, other.languageSpoken);
  }

  @override
  int get hashCode => const ListEquality().hash([
        candidateName,
        candidateReference,
        candidateImage,
        candidateUserRef,
        candidateUID,
        gender,
        addressDetail,
        location,
        createdAt,
        updatedAt,
        dateBirth,
        candidateUserReference,
        facets,
        organizationsLikedYou,
        resumeFileURL,
        maritalStatus,
        motherTongue,
        languageSpoken
      ]);
}

CandidateProfileStruct createCandidateProfileStruct({
  String? candidateName,
  DocumentReference? candidateReference,
  String? candidateImage,
  DocumentReference? candidateUserRef,
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
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CandidateProfileStruct(
      candidateName: candidateName,
      candidateReference: candidateReference,
      candidateImage: candidateImage,
      candidateUserRef: candidateUserRef,
      candidateUID: candidateUID,
      gender: gender,
      addressDetail: addressDetail ?? AddressStruct(),
      location: location,
      createdAt: createdAt,
      updatedAt: updatedAt,
      dateBirth: dateBirth,
      candidateUserReference: candidateUserReference,
      resumeFileURL: resumeFileURL,
      maritalStatus: maritalStatus,
      motherTongue: motherTongue,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CandidateProfileStruct? updateCandidateProfileStruct(
  CandidateProfileStruct? candidateProfile, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    candidateProfile
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCandidateProfileStructData(
  Map<String, dynamic> firestoreData,
  CandidateProfileStruct? candidateProfile,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (candidateProfile == null) {
    return;
  }
  if (candidateProfile.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && candidateProfile.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final candidateProfileData =
      getCandidateProfileFirestoreData(candidateProfile, forFieldValue);
  final nestedData =
      candidateProfileData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = candidateProfile.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCandidateProfileFirestoreData(
  CandidateProfileStruct? candidateProfile, [
  bool forFieldValue = false,
]) {
  if (candidateProfile == null) {
    return {};
  }
  final firestoreData = mapToFirestore(candidateProfile.toMap());

  // Handle nested data for "addressDetail" field.
  addAddressStructData(firestoreData, candidateProfile.addressDetail,
      'addressDetail', forFieldValue);

  // Add any Firestore field values
  candidateProfile.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCandidateProfileListFirestoreData(
  List<CandidateProfileStruct>? candidateProfiles,
) =>
    candidateProfiles
        ?.map((e) => getCandidateProfileFirestoreData(e, true))
        .toList() ??
    [];
