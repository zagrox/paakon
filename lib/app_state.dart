import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _navOpen = prefs.getBool('ff_navOpen') ?? _navOpen;
    });
    _safeInit(() {
      _isFirstTimeVisit =
          prefs.getBool('ff_isFirstTimeVisit') ?? _isFirstTimeVisit;
    });
    _safeInit(() {
      _appLoading = prefs.getBool('ff_appLoading') ?? _appLoading;
    });
    _safeInit(() {
      _rememberEmail = prefs.getString('ff_rememberEmail') ?? _rememberEmail;
    });
    _safeInit(() {
      _rememberPassword =
          prefs.getString('ff_rememberPassword') ?? _rememberPassword;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _MaxWidth = 1440;
  int get MaxWidth => _MaxWidth;
  set MaxWidth(int value) {
    _MaxWidth = value;
  }

  bool _ShowMenu = false;
  bool get ShowMenu => _ShowMenu;
  set ShowMenu(bool value) {
    _ShowMenu = value;
  }

  bool _navOpen = false;
  bool get navOpen => _navOpen;
  set navOpen(bool value) {
    _navOpen = value;
    prefs.setBool('ff_navOpen', value);
  }

  bool _isFirstTimeVisit = false;
  bool get isFirstTimeVisit => _isFirstTimeVisit;
  set isFirstTimeVisit(bool value) {
    _isFirstTimeVisit = value;
    prefs.setBool('ff_isFirstTimeVisit', value);
  }

  List<UserStatsStruct> _offlineStats = [];
  List<UserStatsStruct> get offlineStats => _offlineStats;
  set offlineStats(List<UserStatsStruct> value) {
    _offlineStats = value;
  }

  void addToOfflineStats(UserStatsStruct value) {
    offlineStats.add(value);
  }

  void removeFromOfflineStats(UserStatsStruct value) {
    offlineStats.remove(value);
  }

  void removeAtIndexFromOfflineStats(int index) {
    offlineStats.removeAt(index);
  }

  void updateOfflineStatsAtIndex(
    int index,
    UserStatsStruct Function(UserStatsStruct) updateFn,
  ) {
    offlineStats[index] = updateFn(_offlineStats[index]);
  }

  void insertAtIndexInOfflineStats(int index, UserStatsStruct value) {
    offlineStats.insert(index, value);
  }

  bool _appLoading = false;
  bool get appLoading => _appLoading;
  set appLoading(bool value) {
    _appLoading = value;
    prefs.setBool('ff_appLoading', value);
  }

  String _rememberEmail = '';
  String get rememberEmail => _rememberEmail;
  set rememberEmail(String value) {
    _rememberEmail = value;
    prefs.setString('ff_rememberEmail', value);
  }

  String _rememberPassword = '';
  String get rememberPassword => _rememberPassword;
  set rememberPassword(String value) {
    _rememberPassword = value;
    prefs.setString('ff_rememberPassword', value);
  }

  final _userStatManager = FutureRequestManager<List<StatsRow>>();
  Future<List<StatsRow>> userStat({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<StatsRow>> Function() requestFn,
  }) =>
      _userStatManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserStatCache() => _userStatManager.clear();
  void clearUserStatCacheKey(String? uniqueKey) =>
      _userStatManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
