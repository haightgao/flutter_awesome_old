import 'package:flutter_awesome/example/rest_api/flutter_consume_rest_api_with_best_practices/network/network_enums.dart';

typedef NetworkCallBack<R> = R Function(dynamic);
typedef NetworkOnFailureCallBackWithMessage<R> = R Function(NetworkResponseErrortype, String?);
