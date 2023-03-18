import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ShowLatestMrfNumberCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Show Latest Mrf Number',
      apiUrl:
          'https://script.google.com/macros/s/AKfycbzSWaq6xmIzseHzLmqYRGbm4HXgmshED_vHXoF-yftqY3hIlfj2d0D2iQFr8WjZHsNn/exec',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic latestMrfNumber(dynamic response) => getJsonField(
        response,
        r'''$.maxNumber''',
      );
}

class SendMrfItemToSheetsCall {
  static Future<ApiCallResponse> call({
    String? mrfnumber = '36',
    String? itemname = 'df dsf',
    double? qty = 35,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Send Mrf Item To Sheets',
      apiUrl:
          'https://script.google.com/macros/s/AKfycbw8GXMaDj9Q9jS-AViS2ByPLMSQ78bcCWui55WQacBHR7K_dcWitK1b0RBGx75xVSs_/exec',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mrfnumber': mrfnumber,
        'itemname': itemname,
        'qty': qty,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FetchMrfListDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Mrf List Data',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/17bCfC9CgnGKgUDcxDV4HMmFg4UKCH1wkCKQWSX2ULCI/values/MRF_REQ_REGISTER!A2:M',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyBQWc8nog3MjOGMuzTAjxldaYBOl1HEjII",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic values(dynamic response) => getJsonField(
        response,
        r'''$.values''',
        true,
      );
}

class ToAddNewRefNumbersCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'To Add New Ref Numbers',
      apiUrl:
          'https://script.google.com/macros/s/AKfycbwSt5_Bh8tCh2nNLpO7Jj8FbTHP5Oxp6NcSDxeHPw97T4gb4wAen2l5QVeIbqobaN1d/exec',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic lastRefNumber(dynamic response) => getJsonField(
        response,
        r'''$.number''',
      );
}

class FilterDataCall {
  static Future<ApiCallResponse> call({
    String? searchTerm = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'FilterData',
      apiUrl:
          'https://script.google.com/macros/s/AKfycbxvEDQm_TKHwgI7M6H8lizX5OIckqT9QwqQg6nRSNPcsYgm4AjA_LeIzhfJ-fX8AekT/exec',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'searchTerm': searchTerm,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic searchData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
}

class CompleteSenderCall {
  static Future<ApiCallResponse> call({
    String? mrfnumber = '',
    String? itemname = '',
    String? uom = '',
    String? qty = '',
    String? remarks = '',
    String? requestor = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CompleteSender',
      apiUrl:
          'https://script.google.com/macros/s/AKfycbwJoOgqaBlEt3lJ8zSNsyZ8ZYzKS0Nv5qId_I4fqMIS42CT0wogkrVKhttAs19Qh_3B/exec',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mrfnumber': mrfnumber,
        'itemname': itemname,
        'uom': uom,
        'qty': qty,
        'remarks': remarks,
        'requestor': requestor,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
