import 'dart:convert';

import 'package:flutter_awesome/example/rest_api/flutter_consume_rest_api_with_best_practices/network/network_enums.dart';
import 'package:flutter_awesome/example/rest_api/flutter_consume_rest_api_with_best_practices/network/network_typedef.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  const NetworkHelper._();

  static String concatUrlQP(String url, Map<String, String>? queryParameters) {
    if (url.isEmpty) return url;
    if (queryParameters == null || queryParameters.isEmpty) {
      return url;
    }

    final StringBuffer stringBuffer = StringBuffer('$url?');
    queryParameters.forEach((key, value) {
      if (value.trim() == '') return;
      if (value.contains(' ')) {
        throw Exception('Invalid Input Exception');
      }
      stringBuffer.write('$key=$value&');
    });

    final result = stringBuffer.toString();
    return result.substring(0, result.length - 1);
  }

  static bool _isValidResponse(json) {
    return json != null && json['status'] != null && json['status'] == 'ok' && json['articles'] != null;
  }

  static R filterResponse<R>({
    required NetworkCallBack callBack,
    required http.Response? response,
    required NetworkOnFailureCallBackWithMessage onFailureCallBackWithMessage,
    CallBackParameterName parameterName = CallBackParameterName.all,
  }) {
    try {
      if (response == null || response.body.isEmpty) {
        return onFailureCallBackWithMessage(NetworkResponseErrortype.responseEmpty, 'empty response');
      }

      var json = jsonDecode(response.body);

      if (response.statusCode == 200) {
        if (_isValidResponse(json)) {
          return callBack(parameterName.getJson(json));
        }
      } else if (response.statusCode == 1708) {
        return onFailureCallBackWithMessage(NetworkResponseErrortype.socket, 'socket');
      }

      return onFailureCallBackWithMessage(NetworkResponseErrortype.didNotSucceed, 'unknown');
    } catch (e) {
      return onFailureCallBackWithMessage(NetworkResponseErrortype.exception, 'Exception $e');
    }
  }
}
