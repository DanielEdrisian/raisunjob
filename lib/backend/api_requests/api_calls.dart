import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Razor Pay Group Code

class RazorPayGroup {
  static String baseUrl = 'https://api.razorpay.com/v1';
  static Map<String, String> headers = {};
  static CreateCustomerCall createCustomerCall = CreateCustomerCall();
  static CreateSubscriptionsCall createSubscriptionsCall =
      CreateSubscriptionsCall();
}

class CreateCustomerCall {
  Future<ApiCallResponse> call() {
    final body = '''
{
  "name":"Gaurav Kumar",
  "email":"gaurav.kumar@example.com",
  "contact":"9123456780",
  "fail_existing":"1",
  "gstin":"12ABCDE2356F7GH",
  "notes":{
    "notes_key_1":"Tea, Earl Grey, Hot",
    "notes_key_2":"Tea, Earl Grey… decaf."
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create customer',
      apiUrl: '${RazorPayGroup.baseUrl}/customers',
      callType: ApiCallType.POST,
      headers: {
        ...RazorPayGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateSubscriptionsCall {
  Future<ApiCallResponse> call() {
    final body = '''
{
  "plan_id":"{plan_id}",
  "total_count":6,
  "quantity":1,
  "start_at":1735689600,
  "expire_by":1893456000,
  "customer_notify":1,
  "addons":[
    {
      "item":{
        "name":"Delivery charges",
        "amount":30000,
        "currency":"INR"
      }
    }
  ],
  "offer_id":"{offer_id}",
  "notes":{
    "notes_key_1":"Tea, Earl Grey, Hot",
    "notes_key_2":"Tea, Earl Grey… decaf."
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create subscriptions',
      apiUrl: '${RazorPayGroup.baseUrl}/subscriptions',
      callType: ApiCallType.POST,
      headers: {
        ...RazorPayGroup.headers,
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Razor Pay Group Code

class TestCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'test',
      apiUrl: 'https://apicustom-production-4517.up.railway.app/extract_text',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
