// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStatsStruct extends BaseStruct {
  UserStatsStruct({
    int? id,
    int? currentCredit,
    int? allImports,
    int? allCleans,
    String? user,
    int? allInvalids,
  })  : _id = id,
        _currentCredit = currentCredit,
        _allImports = allImports,
        _allCleans = allCleans,
        _user = user,
        _allInvalids = allInvalids;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "current_credit" field.
  int? _currentCredit;
  int get currentCredit => _currentCredit ?? 0;
  set currentCredit(int? val) => _currentCredit = val;

  void incrementCurrentCredit(int amount) =>
      currentCredit = currentCredit + amount;

  bool hasCurrentCredit() => _currentCredit != null;

  // "all_imports" field.
  int? _allImports;
  int get allImports => _allImports ?? 0;
  set allImports(int? val) => _allImports = val;

  void incrementAllImports(int amount) => allImports = allImports + amount;

  bool hasAllImports() => _allImports != null;

  // "all_cleans" field.
  int? _allCleans;
  int get allCleans => _allCleans ?? 0;
  set allCleans(int? val) => _allCleans = val;

  void incrementAllCleans(int amount) => allCleans = allCleans + amount;

  bool hasAllCleans() => _allCleans != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  set user(String? val) => _user = val;

  bool hasUser() => _user != null;

  // "all_invalids" field.
  int? _allInvalids;
  int get allInvalids => _allInvalids ?? 0;
  set allInvalids(int? val) => _allInvalids = val;

  void incrementAllInvalids(int amount) => allInvalids = allInvalids + amount;

  bool hasAllInvalids() => _allInvalids != null;

  static UserStatsStruct fromMap(Map<String, dynamic> data) => UserStatsStruct(
        id: castToType<int>(data['id']),
        currentCredit: castToType<int>(data['current_credit']),
        allImports: castToType<int>(data['all_imports']),
        allCleans: castToType<int>(data['all_cleans']),
        user: data['user'] as String?,
        allInvalids: castToType<int>(data['all_invalids']),
      );

  static UserStatsStruct? maybeFromMap(dynamic data) => data is Map
      ? UserStatsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'current_credit': _currentCredit,
        'all_imports': _allImports,
        'all_cleans': _allCleans,
        'user': _user,
        'all_invalids': _allInvalids,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'current_credit': serializeParam(
          _currentCredit,
          ParamType.int,
        ),
        'all_imports': serializeParam(
          _allImports,
          ParamType.int,
        ),
        'all_cleans': serializeParam(
          _allCleans,
          ParamType.int,
        ),
        'user': serializeParam(
          _user,
          ParamType.String,
        ),
        'all_invalids': serializeParam(
          _allInvalids,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserStatsStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStatsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        currentCredit: deserializeParam(
          data['current_credit'],
          ParamType.int,
          false,
        ),
        allImports: deserializeParam(
          data['all_imports'],
          ParamType.int,
          false,
        ),
        allCleans: deserializeParam(
          data['all_cleans'],
          ParamType.int,
          false,
        ),
        user: deserializeParam(
          data['user'],
          ParamType.String,
          false,
        ),
        allInvalids: deserializeParam(
          data['all_invalids'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserStatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStatsStruct &&
        id == other.id &&
        currentCredit == other.currentCredit &&
        allImports == other.allImports &&
        allCleans == other.allCleans &&
        user == other.user &&
        allInvalids == other.allInvalids;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, currentCredit, allImports, allCleans, user, allInvalids]);
}

UserStatsStruct createUserStatsStruct({
  int? id,
  int? currentCredit,
  int? allImports,
  int? allCleans,
  String? user,
  int? allInvalids,
}) =>
    UserStatsStruct(
      id: id,
      currentCredit: currentCredit,
      allImports: allImports,
      allCleans: allCleans,
      user: user,
      allInvalids: allInvalids,
    );
