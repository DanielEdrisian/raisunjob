// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideosStruct extends FFFirebaseStruct {
  VideosStruct({
    String? name,
    String? video,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _video = video,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  set video(String? val) => _video = val;
  bool hasVideo() => _video != null;

  static VideosStruct fromMap(Map<String, dynamic> data) => VideosStruct(
        name: data['name'] as String?,
        video: data['video'] as String?,
      );

  static VideosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? VideosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'video': _video,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'video': serializeParam(
          _video,
          ParamType.String,
        ),
      }.withoutNulls;

  static VideosStruct fromSerializableMap(Map<String, dynamic> data) =>
      VideosStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        video: deserializeParam(
          data['video'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VideosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VideosStruct && name == other.name && video == other.video;
  }

  @override
  int get hashCode => const ListEquality().hash([name, video]);
}

VideosStruct createVideosStruct({
  String? name,
  String? video,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VideosStruct(
      name: name,
      video: video,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VideosStruct? updateVideosStruct(
  VideosStruct? videos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    videos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVideosStructData(
  Map<String, dynamic> firestoreData,
  VideosStruct? videos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (videos == null) {
    return;
  }
  if (videos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && videos.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final videosData = getVideosFirestoreData(videos, forFieldValue);
  final nestedData = videosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = videos.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVideosFirestoreData(
  VideosStruct? videos, [
  bool forFieldValue = false,
]) {
  if (videos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(videos.toMap());

  // Add any Firestore field values
  videos.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVideosListFirestoreData(
  List<VideosStruct>? videoss,
) =>
    videoss?.map((e) => getVideosFirestoreData(e, true)).toList() ?? [];
