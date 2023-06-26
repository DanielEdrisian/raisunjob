import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobsRecord extends FirestoreRecord {
  JobsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "jobTitle" field.
  String? _jobTitle;
  String get jobTitle => _jobTitle ?? '';
  bool hasJobTitle() => _jobTitle != null;

  // "jobDescription" field.
  String? _jobDescription;
  String get jobDescription => _jobDescription ?? '';
  bool hasJobDescription() => _jobDescription != null;

  // "jobRequirements" field.
  String? _jobRequirements;
  String get jobRequirements => _jobRequirements ?? '';
  bool hasJobRequirements() => _jobRequirements != null;

  // "recruiterName" field.
  String? _recruiterName;
  String get recruiterName => _recruiterName ?? '';
  bool hasRecruiterName() => _recruiterName != null;

  // "recruiterLogo" field.
  String? _recruiterLogo;
  String get recruiterLogo => _recruiterLogo ?? '';
  bool hasRecruiterLogo() => _recruiterLogo != null;

  // "recruiterID" field.
  DocumentReference? _recruiterID;
  DocumentReference? get recruiterID => _recruiterID;
  bool hasRecruiterID() => _recruiterID != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "createdAtINT" field.
  int? _createdAtINT;
  int get createdAtINT => _createdAtINT ?? 0;
  bool hasCreatedAtINT() => _createdAtINT != null;

  // "createdAtINTCopy" field.
  int? _createdAtINTCopy;
  int get createdAtINTCopy => _createdAtINTCopy ?? 0;
  bool hasCreatedAtINTCopy() => _createdAtINTCopy != null;

  // "createdAtTimeReset" field.
  DateTime? _createdAtTimeReset;
  DateTime? get createdAtTimeReset => _createdAtTimeReset;
  bool hasCreatedAtTimeReset() => _createdAtTimeReset != null;

  // "jobID" field.
  String? _jobID;
  String get jobID => _jobID ?? '';
  bool hasJobID() => _jobID != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "jobVacancy" field.
  int? _jobVacancy;
  int get jobVacancy => _jobVacancy ?? 0;
  bool hasJobVacancy() => _jobVacancy != null;

  // "salaryMin" field.
  double? _salaryMin;
  double get salaryMin => _salaryMin ?? 0.0;
  bool hasSalaryMin() => _salaryMin != null;

  // "salaryMax" field.
  double? _salaryMax;
  double get salaryMax => _salaryMax ?? 0.0;
  bool hasSalaryMax() => _salaryMax != null;

  // "jobShift" field.
  String? _jobShift;
  String get jobShift => _jobShift ?? '';
  bool hasJobShift() => _jobShift != null;

  // "jobType" field.
  String? _jobType;
  String get jobType => _jobType ?? '';
  bool hasJobType() => _jobType != null;

  // "experience" field.
  String? _experience;
  String get experience => _experience ?? '';
  bool hasExperience() => _experience != null;

  // "workLocation" field.
  LatLng? _workLocation;
  LatLng? get workLocation => _workLocation;
  bool hasWorkLocation() => _workLocation != null;

  // "workAddress" field.
  AddressStruct? _workAddress;
  AddressStruct get workAddress => _workAddress ?? AddressStruct();
  bool hasWorkAddress() => _workAddress != null;

  // "jobSalaryMin" field.
  int? _jobSalaryMin;
  int get jobSalaryMin => _jobSalaryMin ?? 0;
  bool hasJobSalaryMin() => _jobSalaryMin != null;

  // "jobSalaryMax" field.
  int? _jobSalaryMax;
  int get jobSalaryMax => _jobSalaryMax ?? 0;
  bool hasJobSalaryMax() => _jobSalaryMax != null;

  // "jobSalaryDuration" field.
  String? _jobSalaryDuration;
  String get jobSalaryDuration => _jobSalaryDuration ?? '';
  bool hasJobSalaryDuration() => _jobSalaryDuration != null;

  // "jobWorkTerm" field.
  String? _jobWorkTerm;
  String get jobWorkTerm => _jobWorkTerm ?? '';
  bool hasJobWorkTerm() => _jobWorkTerm != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "videos" field.
  List<String>? _videos;
  List<String> get videos => _videos ?? const [];
  bool hasVideos() => _videos != null;

  // "perks" field.
  List<String>? _perks;
  List<String> get perks => _perks ?? const [];
  bool hasPerks() => _perks != null;

  // "recieveApplicationsFrom" field.
  String? _recieveApplicationsFrom;
  String get recieveApplicationsFrom => _recieveApplicationsFrom ?? '';
  bool hasRecieveApplicationsFrom() => _recieveApplicationsFrom != null;

  // "languages" field.
  List<String>? _languages;
  List<String> get languages => _languages ?? const [];
  bool hasLanguages() => _languages != null;

  // "education" field.
  String? _education;
  String get education => _education ?? '';
  bool hasEducation() => _education != null;

  // "subjects" field.
  List<String>? _subjects;
  List<String> get subjects => _subjects ?? const [];
  bool hasSubjects() => _subjects != null;

  // "englishLevel" field.
  String? _englishLevel;
  String get englishLevel => _englishLevel ?? '';
  bool hasEnglishLevel() => _englishLevel != null;

  // "interviewType" field.
  String? _interviewType;
  String get interviewType => _interviewType ?? '';
  bool hasInterviewType() => _interviewType != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "startTime" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  String? _endTime;
  String get endTime => _endTime ?? '';
  bool hasEndTime() => _endTime != null;

  // "extraNotes" field.
  String? _extraNotes;
  String get extraNotes => _extraNotes ?? '';
  bool hasExtraNotes() => _extraNotes != null;

  void _initializeFields() {
    _jobTitle = snapshotData['jobTitle'] as String?;
    _jobDescription = snapshotData['jobDescription'] as String?;
    _jobRequirements = snapshotData['jobRequirements'] as String?;
    _recruiterName = snapshotData['recruiterName'] as String?;
    _recruiterLogo = snapshotData['recruiterLogo'] as String?;
    _recruiterID = snapshotData['recruiterID'] as DocumentReference?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _createdAtINT = castToType<int>(snapshotData['createdAtINT']);
    _createdAtINTCopy = castToType<int>(snapshotData['createdAtINTCopy']);
    _createdAtTimeReset = snapshotData['createdAtTimeReset'] as DateTime?;
    _jobID = snapshotData['jobID'] as String?;
    _gender = snapshotData['gender'] as String?;
    _jobVacancy = castToType<int>(snapshotData['jobVacancy']);
    _salaryMin = castToType<double>(snapshotData['salaryMin']);
    _salaryMax = castToType<double>(snapshotData['salaryMax']);
    _jobShift = snapshotData['jobShift'] as String?;
    _jobType = snapshotData['jobType'] as String?;
    _experience = snapshotData['experience'] as String?;
    _workLocation = snapshotData['workLocation'] as LatLng?;
    _workAddress = AddressStruct.maybeFromMap(snapshotData['workAddress']);
    _jobSalaryMin = castToType<int>(snapshotData['jobSalaryMin']);
    _jobSalaryMax = castToType<int>(snapshotData['jobSalaryMax']);
    _jobSalaryDuration = snapshotData['jobSalaryDuration'] as String?;
    _jobWorkTerm = snapshotData['jobWorkTerm'] as String?;
    _images = getDataList(snapshotData['images']);
    _videos = getDataList(snapshotData['videos']);
    _perks = getDataList(snapshotData['perks']);
    _recieveApplicationsFrom =
        snapshotData['recieveApplicationsFrom'] as String?;
    _languages = getDataList(snapshotData['languages']);
    _education = snapshotData['education'] as String?;
    _subjects = getDataList(snapshotData['subjects']);
    _englishLevel = snapshotData['englishLevel'] as String?;
    _interviewType = snapshotData['interviewType'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _startTime = snapshotData['startTime'] as String?;
    _endTime = snapshotData['endTime'] as String?;
    _extraNotes = snapshotData['extraNotes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobs');

  static Stream<JobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobsRecord.fromSnapshot(s));

  static Future<JobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobsRecord.fromSnapshot(s));

  static JobsRecord fromSnapshot(DocumentSnapshot snapshot) => JobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobsRecordData({
  String? jobTitle,
  String? jobDescription,
  String? jobRequirements,
  String? recruiterName,
  String? recruiterLogo,
  DocumentReference? recruiterID,
  DateTime? createdAt,
  int? createdAtINT,
  int? createdAtINTCopy,
  DateTime? createdAtTimeReset,
  String? jobID,
  String? gender,
  int? jobVacancy,
  double? salaryMin,
  double? salaryMax,
  String? jobShift,
  String? jobType,
  String? experience,
  LatLng? workLocation,
  AddressStruct? workAddress,
  int? jobSalaryMin,
  int? jobSalaryMax,
  String? jobSalaryDuration,
  String? jobWorkTerm,
  String? recieveApplicationsFrom,
  String? education,
  String? englishLevel,
  String? interviewType,
  DateTime? startDate,
  DateTime? endDate,
  String? startTime,
  String? endTime,
  String? extraNotes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'jobTitle': jobTitle,
      'jobDescription': jobDescription,
      'jobRequirements': jobRequirements,
      'recruiterName': recruiterName,
      'recruiterLogo': recruiterLogo,
      'recruiterID': recruiterID,
      'createdAt': createdAt,
      'createdAtINT': createdAtINT,
      'createdAtINTCopy': createdAtINTCopy,
      'createdAtTimeReset': createdAtTimeReset,
      'jobID': jobID,
      'gender': gender,
      'jobVacancy': jobVacancy,
      'salaryMin': salaryMin,
      'salaryMax': salaryMax,
      'jobShift': jobShift,
      'jobType': jobType,
      'experience': experience,
      'workLocation': workLocation,
      'workAddress': AddressStruct().toMap(),
      'jobSalaryMin': jobSalaryMin,
      'jobSalaryMax': jobSalaryMax,
      'jobSalaryDuration': jobSalaryDuration,
      'jobWorkTerm': jobWorkTerm,
      'recieveApplicationsFrom': recieveApplicationsFrom,
      'education': education,
      'englishLevel': englishLevel,
      'interviewType': interviewType,
      'startDate': startDate,
      'endDate': endDate,
      'startTime': startTime,
      'endTime': endTime,
      'extraNotes': extraNotes,
    }.withoutNulls,
  );

  // Handle nested data for "workAddress" field.
  addAddressStructData(firestoreData, workAddress, 'workAddress');

  return firestoreData;
}
