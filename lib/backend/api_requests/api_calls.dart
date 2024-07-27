import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SingleCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? photo = '',
    int? balance,
    int? code,
    bool? role,
    bool? freeEmail,
    String? result = '',
    String? reason = '',
    int? sendTransactional = 1,
    String? didYouMean = '',
    int? success,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Single',
      apiUrl: '/v1/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '667bc11252af4',
        'Accept': 'application/json',
        'Host': 'api.debounce.io',
      },
      params: {
        'email': email,
        'photo': photo,
        'balance': balance,
        'code': code,
        'role': role,
        'freemail': freeEmail,
        'result': result,
        'reason': reason,
        'transaction': sendTransactional,
        'similar': didYouMean,
        'success': success,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
