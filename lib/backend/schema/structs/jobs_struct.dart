// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobsStruct extends FFFirebaseStruct {
  JobsStruct({
    String? jobTitle,
    String? jobDescription,
    String? jobRequirements,
    String? recruiterName,
    String? recruiterLogo,
    DocumentReference? recruiterID,
    DateTime? createdAT,
    int? createdAtINT,
    int? createdAtINTCopy,
    DocumentReference? jobsReference,
    String? jobID,
    String? jobGenderSeek,
    LatLng? jobWorkLocation,
    AddressStruct? jobWorkAddress,
    String? jobShift,
    int? jobTotalVacancy,
    int? jobSalaryMin,
    int? jobSlaryMax,
    String? jobSalaryDuration,
    String? jobWorkTerm,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _jobTitle = jobTitle,
        _jobDescription = jobDescription,
        _jobRequirements = jobRequirements,
        _recruiterName = recruiterName,
        _recruiterLogo = recruiterLogo,
        _recruiterID = recruiterID,
        _createdAT = createdAT,
        _createdAtINT = createdAtINT,
        _createdAtINTCopy = createdAtINTCopy,
        _jobsReference = jobsReference,
        _jobID = jobID,
        _jobGenderSeek = jobGenderSeek,
        _jobWorkLocation = jobWorkLocation,
        _jobWorkAddress = jobWorkAddress,
        _jobShift = jobShift,
        _jobTotalVacancy = jobTotalVacancy,
        _jobSalaryMin = jobSalaryMin,
        _jobSlaryMax = jobSlaryMax,
        _jobSalaryDuration = jobSalaryDuration,
        _jobWorkTerm = jobWorkTerm,
        super(firestoreUtilData);

  // "jobTitle" field.
  String? _jobTitle;
  String get jobTitle => _jobTitle ?? '';
  set jobTitle(String? val) => _jobTitle = val;
  bool hasJobTitle() => _jobTitle != null;

  // "jobDescription" field.
  String? _jobDescription;
  String get jobDescription => _jobDescription ?? '';
  set jobDescription(String? val) => _jobDescription = val;
  bool hasJobDescription() => _jobDescription != null;

  // "jobRequirements" field.
  String? _jobRequirements;
  String get jobRequirements => _jobRequirements ?? '';
  set jobRequirements(String? val) => _jobRequirements = val;
  bool hasJobRequirements() => _jobRequirements != null;

  // "recruiterName" field.
  String? _recruiterName;
  String get recruiterName => _recruiterName ?? '';
  set recruiterName(String? val) => _recruiterName = val;
  bool hasRecruiterName() => _recruiterName != null;

  // "recruiterLogo" field.
  String? _recruiterLogo;
  String get recruiterLogo => _recruiterLogo ?? '';
  set recruiterLogo(String? val) => _recruiterLogo = val;
  bool hasRecruiterLogo() => _recruiterLogo != null;

  // "recruiterID" field.
  DocumentReference? _recruiterID;
  DocumentReference? get recruiterID => _recruiterID;
  set recruiterID(DocumentReference? val) => _recruiterID = val;
  bool hasRecruiterID() => _recruiterID != null;

  // "createdAT" field.
  DateTime? _createdAT;
  DateTime? get createdAT => _createdAT;
  set createdAT(DateTime? val) => _createdAT = val;
  bool hasCreatedAT() => _createdAT != null;

  // "createdAtINT" field.
  int? _createdAtINT;
  int get createdAtINT => _createdAtINT ?? 0;
  set createdAtINT(int? val) => _createdAtINT = val;
  void incrementCreatedAtINT(int amount) =>
      _createdAtINT = createdAtINT + amount;
  bool hasCreatedAtINT() => _createdAtINT != null;

  // "createdAtINTCopy" field.
  int? _createdAtINTCopy;
  int get createdAtINTCopy => _createdAtINTCopy ?? 0;
  set createdAtINTCopy(int? val) => _createdAtINTCopy = val;
  void incrementCreatedAtINTCopy(int amount) =>
      _createdAtINTCopy = createdAtINTCopy + amount;
  bool hasCreatedAtINTCopy() => _createdAtINTCopy != null;

  // "jobsReference" field.
  DocumentReference? _jobsReference;
  DocumentReference? get jobsReference => _jobsReference;
  set jobsReference(DocumentReference? val) => _jobsReference = val;
  bool hasJobsReference() => _jobsReference != null;

  // "jobID" field.
  String? _jobID;
  String get jobID => _jobID ?? '';
  set jobID(String? val) => _jobID = val;
  bool hasJobID() => _jobID != null;

  // "jobGenderSeek" field.
  String? _jobGenderSeek;
  String get jobGenderSeek => _jobGenderSeek ?? '';
  set jobGenderSeek(String? val) => _jobGenderSeek = val;
  bool hasJobGenderSeek() => _jobGenderSeek != null;

  // "jobWorkLocation" field.
  LatLng? _jobWorkLocation;
  LatLng? get jobWorkLocation => _jobWorkLocation;
  set jobWorkLocation(LatLng? val) => _jobWorkLocation = val;
  bool hasJobWorkLocation() => _jobWorkLocation != null;

  // "jobWorkAddress" field.
  AddressStruct? _jobWorkAddress;
  AddressStruct get jobWorkAddress => _jobWorkAddress ?? AddressStruct();
  set jobWorkAddress(AddressStruct? val) => _jobWorkAddress = val;
  void updateJobWorkAddress(Function(AddressStruct) updateFn) =>
      updateFn(_jobWorkAddress ??= AddressStruct());
  bool hasJobWorkAddress() => _jobWorkAddress != null;

  // "jobShift" field.
  String? _jobShift;
  String get jobShift => _jobShift ?? '';
  set jobShift(String? val) => _jobShift = val;
  bool hasJobShift() => _jobShift != null;

  // "jobTotalVacancy" field.
  int? _jobTotalVacancy;
  int get jobTotalVacancy => _jobTotalVacancy ?? 0;
  set jobTotalVacancy(int? val) => _jobTotalVacancy = val;
  void incrementJobTotalVacancy(int amount) =>
      _jobTotalVacancy = jobTotalVacancy + amount;
  bool hasJobTotalVacancy() => _jobTotalVacancy != null;

  // "jobSalaryMin" field.
  int? _jobSalaryMin;
  int get jobSalaryMin => _jobSalaryMin ?? 0;
  set jobSalaryMin(int? val) => _jobSalaryMin = val;
  void incrementJobSalaryMin(int amount) =>
      _jobSalaryMin = jobSalaryMin + amount;
  bool hasJobSalaryMin() => _jobSalaryMin != null;

  // "jobSlaryMax" field.
  int? _jobSlaryMax;
  int get jobSlaryMax => _jobSlaryMax ?? 0;
  set jobSlaryMax(int? val) => _jobSlaryMax = val;
  void incrementJobSlaryMax(int amount) => _jobSlaryMax = jobSlaryMax + amount;
  bool hasJobSlaryMax() => _jobSlaryMax != null;

  // "jobSalaryDuration" field.
  String? _jobSalaryDuration;
  String get jobSalaryDuration => _jobSalaryDuration ?? '';
  set jobSalaryDuration(String? val) => _jobSalaryDuration = val;
  bool hasJobSalaryDuration() => _jobSalaryDuration != null;

  // "jobWorkTerm" field.
  String? _jobWorkTerm;
  String get jobWorkTerm => _jobWorkTerm ?? '';
  set jobWorkTerm(String? val) => _jobWorkTerm = val;
  bool hasJobWorkTerm() => _jobWorkTerm != null;

  static JobsStruct fromMap(Map<String, dynamic> data) => JobsStruct(
        jobTitle: data['jobTitle'] as String?,
        jobDescription: data['jobDescription'] as String?,
        jobRequirements: data['jobRequirements'] as String?,
        recruiterName: data['recruiterName'] as String?,
        recruiterLogo: data['recruiterLogo'] as String?,
        recruiterID: data['recruiterID'] as DocumentReference?,
        createdAT: data['createdAT'] as DateTime?,
        createdAtINT: castToType<int>(data['createdAtINT']),
        createdAtINTCopy: castToType<int>(data['createdAtINTCopy']),
        jobsReference: data['jobsReference'] as DocumentReference?,
        jobID: data['jobID'] as String?,
        jobGenderSeek: data['jobGenderSeek'] as String?,
        jobWorkLocation: data['jobWorkLocation'] as LatLng?,
        jobWorkAddress: AddressStruct.maybeFromMap(data['jobWorkAddress']),
        jobShift: data['jobShift'] as String?,
        jobTotalVacancy: castToType<int>(data['jobTotalVacancy']),
        jobSalaryMin: castToType<int>(data['jobSalaryMin']),
        jobSlaryMax: castToType<int>(data['jobSlaryMax']),
        jobSalaryDuration: data['jobSalaryDuration'] as String?,
        jobWorkTerm: data['jobWorkTerm'] as String?,
      );

  static JobsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? JobsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'jobTitle': _jobTitle,
        'jobDescription': _jobDescription,
        'jobRequirements': _jobRequirements,
        'recruiterName': _recruiterName,
        'recruiterLogo': _recruiterLogo,
        'recruiterID': _recruiterID,
        'createdAT': _createdAT,
        'createdAtINT': _createdAtINT,
        'createdAtINTCopy': _createdAtINTCopy,
        'jobsReference': _jobsReference,
        'jobID': _jobID,
        'jobGenderSeek': _jobGenderSeek,
        'jobWorkLocation': _jobWorkLocation,
        'jobWorkAddress': _jobWorkAddress?.toMap(),
        'jobShift': _jobShift,
        'jobTotalVacancy': _jobTotalVacancy,
        'jobSalaryMin': _jobSalaryMin,
        'jobSlaryMax': _jobSlaryMax,
        'jobSalaryDuration': _jobSalaryDuration,
        'jobWorkTerm': _jobWorkTerm,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'jobTitle': serializeParam(
          _jobTitle,
          ParamType.String,
        ),
        'jobDescription': serializeParam(
          _jobDescription,
          ParamType.String,
        ),
        'jobRequirements': serializeParam(
          _jobRequirements,
          ParamType.String,
        ),
        'recruiterName': serializeParam(
          _recruiterName,
          ParamType.String,
        ),
        'recruiterLogo': serializeParam(
          _recruiterLogo,
          ParamType.String,
        ),
        'recruiterID': serializeParam(
          _recruiterID,
          ParamType.DocumentReference,
        ),
        'createdAT': serializeParam(
          _createdAT,
          ParamType.DateTime,
        ),
        'createdAtINT': serializeParam(
          _createdAtINT,
          ParamType.int,
        ),
        'createdAtINTCopy': serializeParam(
          _createdAtINTCopy,
          ParamType.int,
        ),
        'jobsReference': serializeParam(
          _jobsReference,
          ParamType.DocumentReference,
        ),
        'jobID': serializeParam(
          _jobID,
          ParamType.String,
        ),
        'jobGenderSeek': serializeParam(
          _jobGenderSeek,
          ParamType.String,
        ),
        'jobWorkLocation': serializeParam(
          _jobWorkLocation,
          ParamType.LatLng,
        ),
        'jobWorkAddress': serializeParam(
          _jobWorkAddress,
          ParamType.DataStruct,
        ),
        'jobShift': serializeParam(
          _jobShift,
          ParamType.String,
        ),
        'jobTotalVacancy': serializeParam(
          _jobTotalVacancy,
          ParamType.int,
        ),
        'jobSalaryMin': serializeParam(
          _jobSalaryMin,
          ParamType.int,
        ),
        'jobSlaryMax': serializeParam(
          _jobSlaryMax,
          ParamType.int,
        ),
        'jobSalaryDuration': serializeParam(
          _jobSalaryDuration,
          ParamType.String,
        ),
        'jobWorkTerm': serializeParam(
          _jobWorkTerm,
          ParamType.String,
        ),
      }.withoutNulls;

  static JobsStruct fromSerializableMap(Map<String, dynamic> data) =>
      JobsStruct(
        jobTitle: deserializeParam(
          data['jobTitle'],
          ParamType.String,
          false,
        ),
        jobDescription: deserializeParam(
          data['jobDescription'],
          ParamType.String,
          false,
        ),
        jobRequirements: deserializeParam(
          data['jobRequirements'],
          ParamType.String,
          false,
        ),
        recruiterName: deserializeParam(
          data['recruiterName'],
          ParamType.String,
          false,
        ),
        recruiterLogo: deserializeParam(
          data['recruiterLogo'],
          ParamType.String,
          false,
        ),
        recruiterID: deserializeParam(
          data['recruiterID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['recruiters'],
        ),
        createdAT: deserializeParam(
          data['createdAT'],
          ParamType.DateTime,
          false,
        ),
        createdAtINT: deserializeParam(
          data['createdAtINT'],
          ParamType.int,
          false,
        ),
        createdAtINTCopy: deserializeParam(
          data['createdAtINTCopy'],
          ParamType.int,
          false,
        ),
        jobsReference: deserializeParam(
          data['jobsReference'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['jobs'],
        ),
        jobID: deserializeParam(
          data['jobID'],
          ParamType.String,
          false,
        ),
        jobGenderSeek: deserializeParam(
          data['jobGenderSeek'],
          ParamType.String,
          false,
        ),
        jobWorkLocation: deserializeParam(
          data['jobWorkLocation'],
          ParamType.LatLng,
          false,
        ),
        jobWorkAddress: deserializeStructParam(
          data['jobWorkAddress'],
          ParamType.DataStruct,
          false,
          structBuilder: AddressStruct.fromSerializableMap,
        ),
        jobShift: deserializeParam(
          data['jobShift'],
          ParamType.String,
          false,
        ),
        jobTotalVacancy: deserializeParam(
          data['jobTotalVacancy'],
          ParamType.int,
          false,
        ),
        jobSalaryMin: deserializeParam(
          data['jobSalaryMin'],
          ParamType.int,
          false,
        ),
        jobSlaryMax: deserializeParam(
          data['jobSlaryMax'],
          ParamType.int,
          false,
        ),
        jobSalaryDuration: deserializeParam(
          data['jobSalaryDuration'],
          ParamType.String,
          false,
        ),
        jobWorkTerm: deserializeParam(
          data['jobWorkTerm'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'JobsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is JobsStruct &&
        jobTitle == other.jobTitle &&
        jobDescription == other.jobDescription &&
        jobRequirements == other.jobRequirements &&
        recruiterName == other.recruiterName &&
        recruiterLogo == other.recruiterLogo &&
        recruiterID == other.recruiterID &&
        createdAT == other.createdAT &&
        createdAtINT == other.createdAtINT &&
        createdAtINTCopy == other.createdAtINTCopy &&
        jobsReference == other.jobsReference &&
        jobID == other.jobID &&
        jobGenderSeek == other.jobGenderSeek &&
        jobWorkLocation == other.jobWorkLocation &&
        jobWorkAddress == other.jobWorkAddress &&
        jobShift == other.jobShift &&
        jobTotalVacancy == other.jobTotalVacancy &&
        jobSalaryMin == other.jobSalaryMin &&
        jobSlaryMax == other.jobSlaryMax &&
        jobSalaryDuration == other.jobSalaryDuration &&
        jobWorkTerm == other.jobWorkTerm;
  }

  @override
  int get hashCode => const ListEquality().hash([
        jobTitle,
        jobDescription,
        jobRequirements,
        recruiterName,
        recruiterLogo,
        recruiterID,
        createdAT,
        createdAtINT,
        createdAtINTCopy,
        jobsReference,
        jobID,
        jobGenderSeek,
        jobWorkLocation,
        jobWorkAddress,
        jobShift,
        jobTotalVacancy,
        jobSalaryMin,
        jobSlaryMax,
        jobSalaryDuration,
        jobWorkTerm
      ]);
}

JobsStruct createJobsStruct({
  String? jobTitle,
  String? jobDescription,
  String? jobRequirements,
  String? recruiterName,
  String? recruiterLogo,
  DocumentReference? recruiterID,
  DateTime? createdAT,
  int? createdAtINT,
  int? createdAtINTCopy,
  DocumentReference? jobsReference,
  String? jobID,
  String? jobGenderSeek,
  LatLng? jobWorkLocation,
  AddressStruct? jobWorkAddress,
  String? jobShift,
  int? jobTotalVacancy,
  int? jobSalaryMin,
  int? jobSlaryMax,
  String? jobSalaryDuration,
  String? jobWorkTerm,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    JobsStruct(
      jobTitle: jobTitle,
      jobDescription: jobDescription,
      jobRequirements: jobRequirements,
      recruiterName: recruiterName,
      recruiterLogo: recruiterLogo,
      recruiterID: recruiterID,
      createdAT: createdAT,
      createdAtINT: createdAtINT,
      createdAtINTCopy: createdAtINTCopy,
      jobsReference: jobsReference,
      jobID: jobID,
      jobGenderSeek: jobGenderSeek,
      jobWorkLocation: jobWorkLocation,
      jobWorkAddress: jobWorkAddress ?? AddressStruct(),
      jobShift: jobShift,
      jobTotalVacancy: jobTotalVacancy,
      jobSalaryMin: jobSalaryMin,
      jobSlaryMax: jobSlaryMax,
      jobSalaryDuration: jobSalaryDuration,
      jobWorkTerm: jobWorkTerm,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

JobsStruct? updateJobsStruct(
  JobsStruct? jobs, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    jobs
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addJobsStructData(
  Map<String, dynamic> firestoreData,
  JobsStruct? jobs,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (jobs == null) {
    return;
  }
  if (jobs.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && jobs.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final jobsData = getJobsFirestoreData(jobs, forFieldValue);
  final nestedData = jobsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = jobs.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getJobsFirestoreData(
  JobsStruct? jobs, [
  bool forFieldValue = false,
]) {
  if (jobs == null) {
    return {};
  }
  final firestoreData = mapToFirestore(jobs.toMap());

  // Handle nested data for "jobWorkAddress" field.
  addAddressStructData(
      firestoreData, jobs.jobWorkAddress, 'jobWorkAddress', forFieldValue);

  // Add any Firestore field values
  jobs.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getJobsListFirestoreData(
  List<JobsStruct>? jobss,
) =>
    jobss?.map((e) => getJobsFirestoreData(e, true)).toList() ?? [];
