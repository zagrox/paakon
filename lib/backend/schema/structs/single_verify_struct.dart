// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SingleVerifyStruct extends BaseStruct {
  SingleVerifyStruct({
    String? email,
    String? photo,
    String? append,
    String? gsuite,
  })  : _email = email,
        _photo = photo,
        _append = append,
        _gsuite = gsuite;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  set photo(String? val) => _photo = val;

  bool hasPhoto() => _photo != null;

  // "append" field.
  String? _append;
  String get append => _append ?? '';
  set append(String? val) => _append = val;

  bool hasAppend() => _append != null;

  // "gsuite" field.
  String? _gsuite;
  String get gsuite => _gsuite ?? '';
  set gsuite(String? val) => _gsuite = val;

  bool hasGsuite() => _gsuite != null;

  static SingleVerifyStruct fromMap(Map<String, dynamic> data) =>
      SingleVerifyStruct(
        email: data['email'] as String?,
        photo: data['photo'] as String?,
        append: data['append'] as String?,
        gsuite: data['gsuite'] as String?,
      );

  static SingleVerifyStruct? maybeFromMap(dynamic data) => data is Map
      ? SingleVerifyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'photo': _photo,
        'append': _append,
        'gsuite': _gsuite,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'photo': serializeParam(
          _photo,
          ParamType.String,
        ),
        'append': serializeParam(
          _append,
          ParamType.String,
        ),
        'gsuite': serializeParam(
          _gsuite,
          ParamType.String,
        ),
      }.withoutNulls;

  static SingleVerifyStruct fromSerializableMap(Map<String, dynamic> data) =>
      SingleVerifyStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        photo: deserializeParam(
          data['photo'],
          ParamType.String,
          false,
        ),
        append: deserializeParam(
          data['append'],
          ParamType.String,
          false,
        ),
        gsuite: deserializeParam(
          data['gsuite'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SingleVerifyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SingleVerifyStruct &&
        email == other.email &&
        photo == other.photo &&
        append == other.append &&
        gsuite == other.gsuite;
  }

  @override
  int get hashCode => const ListEquality().hash([email, photo, append, gsuite]);
}

SingleVerifyStruct createSingleVerifyStruct({
  String? email,
  String? photo,
  String? append,
  String? gsuite,
}) =>
    SingleVerifyStruct(
      email: email,
      photo: photo,
      append: append,
      gsuite: gsuite,
    );
