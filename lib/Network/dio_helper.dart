import 'package:axisapp/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/cupertino.dart';
import 'package:axisapp/utilities/constant.dart';
import 'package:axisapp/utilities/logger.dart';
import 'package:axisapp/utilities/shared_pref_helper.dart';
import 'package:axisapp/utilities/view_helper.dart';

class DioHelper {
  static DioHelper _instance = DioHelper.internal();
  static Dio? _dio;
  static int _connectionTimeOut = 50000;

  DioHelper.internal();

  factory DioHelper() {
    return _instance;
  }

  Dio getDio(context) {
    if (_dio != null) {
      _dio = Dio();
      _dio!.options = _defaultBaseOption;
      _dio!.interceptors.add(_interceptorsWrapper(context));
      _dio!.options.headers["Content-Type"] = 'application/json';


      _dio!.options.headers['Authorization'] =
          'Token ${SharedPRefHelper().getBearerToken}';
    }
    return _dio!;
  }

  Dio getDioWithoutToken(context) {
    _dio = Dio();
    try {
      _dio!.options = _defaultBaseOption;
      _dio!.interceptors.add(_interceptorsWrapper(context));

    } catch (e) {
      print(e);
    }
    return _dio!;
  }

  BaseOptions get _defaultBaseOption => BaseOptions(
        connectTimeout: Duration(seconds: 15), // 60 seconds

        baseUrl:
            Constant.appLive ? Constant.baseLiveUrl : Constant.baseDebugUrl,
      );

  void updateBearerToken({String? token}) {
    if (token == null) {
      /* _dio!.options.headers["Authorization"] =
          'Bearer ${SharedPRefHelper().getBearerToken}';*/
    } else
      _dio!.options.headers[''] = 'Bearer $token';
  }

  InterceptorsWrapper _interceptorsWrapper(context) {
    return InterceptorsWrapper(
      onError: (e, handler) async {

        if(e.type == DioExceptionType.connectionTimeout){

          return handler.reject(DioError(
              requestOptions: RequestOptions(path: ''),
              error: e.response.toString()));
        }

        if (e.response.toString().contains('Invalid token')) {
          SharedPRefHelper().setBearerToken('');
          SharedPRefHelper().setUserData('');
          return handler.next(DioError(
              requestOptions: RequestOptions(path: ''),
              error: e.response!.data));
        }
        if (e.response?.statusCode == 400) {
          return handler.reject(DioError(
              requestOptions: RequestOptions(path: ''),
              error: e.response!.data));
        }
        else if (e.response?.statusCode == 401) {

          try {
            e.requestOptions.headers["Authorization"] =
                'Token ${SharedPRefHelper().getBearerToken}';

            final opts = new Options(
                method: e.requestOptions.method,
                headers: e.requestOptions.headers);
            final cloneReq = await _dio!.request(e.requestOptions.path,
                options: opts,
                data: e.requestOptions.data,
                queryParameters: e.requestOptions.queryParameters);

            return handler.resolve(cloneReq);
          } catch (error) {
            Logger.log(
                message: e.response.toString() ?? '',
                name: 'error response:',
                stackTrace: e.stackTrace,
                error: e.error);
            return handler.reject(DioError(
                requestOptions: RequestOptions(path: ''),
                error: e.response.toString()));
          }
        }
        else
          {

            return handler.reject(DioError(
                requestOptions: RequestOptions(path: ''),
                error: '${S.current.error}'));
          }

      },
      onRequest: (options, handler) {
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
}
