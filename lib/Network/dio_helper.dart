import 'dart:convert';

import 'package:axisapp/utilities/logger.dart';
import 'package:axisapp/utilities/shared_pref_helper.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static DioHelper _instance = DioHelper.internal();
  static Dio? _dio;
  static int _connectionTimeOut = 5000000;

  DioHelper.internal();

  factory DioHelper() {
    return _instance;
  }

  Dio getDio(url,isAuthorize) {


    _dio = Dio();
    _dio!.options = _defaultBaseOption(url);

    _dio!.interceptors.add(_interceptorsWrapper);
    if (isAuthorize) {
      _dio!.options.headers["Content-Type"] = 'application/json';

      _dio!.options.headers['Authorization'] =
      'Bearer ${SharedPRefHelper().getBearerToken}';
    }
    return _dio!;
  }

  Dio getDioWithoutToken(url) {
    _dio = Dio();
    _dio!.options = _defaultBaseOption(url);
    _dio!.interceptors.add(_interceptorsWrapper);
    return _dio!;
  }

  BaseOptions _defaultBaseOption(url) {
    return BaseOptions(
      connectTimeout: Duration(seconds: 30), // 60 seconds
      receiveTimeout: Duration(seconds: 30),
      baseUrl: url,

    );
  }

  void updateBearerToken({String? token}) {
    if (token == null) {
      _dio!.options.headers["Authorization"] =
      'Bearer ${SharedPRefHelper().getBearerToken}';
    } else
      _dio!.options.headers[''] = 'Authorization $token';
  }

  InterceptorsWrapper get _interceptorsWrapper => InterceptorsWrapper(
    onError: (e, handler) async {
      print(e.response);
      print(e.type);
      if (e.response?.statusCode == 401) {
        /*    final response = await RefreshTokenRepository().getNewToken();
            if (response is SuccessState) {
              updateBearerToken();
              _dio!.interceptors.requestLock.unlock();
              _dio!.interceptors.responseLock.unlock();
              final reloadedResponse = await _dio!.request(
                  e.response!.requestOptions.path,
                  data: e.response!.requestOptions.data,
                  queryParameters: e.response!.requestOptions.queryParameters);
              handler.resolve(reloadedResponse);
            }*/
      } else if (e.response?.statusCode == 400) {
        Logger.log(
            message: e.response!.data.toString(),
            name: 'error response:',
            stackTrace: e.stackTrace,
            error: e.error);

        return handler.next(DioError(
            requestOptions: e.requestOptions, error: e.response!.data));
      } else {
        Logger.log(
            message: '',
            name: 'error response:',
            stackTrace: e.stackTrace,
            error: e.error);
        return handler.next(e);
      }
    },
    onRequest: (options, handler) {
      Logger.log(
          message: 'REQUEST: json: ${json.encode(options.data)}'
              '\t query parameters: ${json.encode(options.queryParameters)}',
          name: options.baseUrl + options.path);
      return handler.next(options);
    },
    onResponse: (response, handler) {
      Logger.log(
          message: 'RESPONSE: ${response.data}',
          name: response.statusMessage!);
      Map<String, dynamic>? data = {
        'data': response.data,
      };
      return handler.next(
          Response(data: data, requestOptions: response.requestOptions));
    },
  );
}
