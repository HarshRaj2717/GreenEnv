import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:tree_coin/app/core/local_storage/app_storage.dart';
import 'package:tree_coin/app/core/network/endpoints.dart';
import 'package:tree_coin/app/core/network/logger.dart';
import 'package:tree_coin/app/core/network/retry_interceptor.dart';

class ApiClient {
  Dio init() {
    Dio _dio = new Dio();
    _dio.interceptors
      ..add(ApiInterceptors(_dio))
      ..add(dioLoggerInterceptor)
      ..add(RetryInterceptor(DioConnectivityRequestRetrier(
          dio: _dio, connectivity: Connectivity())))
      ..add(CurlLoggerDioInterceptor());
    _dio.options.baseUrl = Endpoints.base.url;
    return _dio;
  }
}

String errorMessage = '';

class ApiInterceptors extends Interceptor {
  final Dio dio;
  const ApiInterceptors(this.dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.path.isNotEmpty) {
      final refreshToken = await AppStorage().getToken();
      options.headers['Authorization'] = 'Bearer $refreshToken';
    } else if (true) {
      //only add token to protected api
      final token = await AppStorage().getToken();
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    const tokenExpiredStatus = 401;
    if (err.requestOptions.path.isNotEmpty) {
      // final context = globalNavigatorKey.currentContext;
      // AppStorage().clearAllData();
      // while (context?.canPop() ?? false) {
      //   context?.pop();
      // }
      // context?.replace(LoginView.routeName);
      // return;
    }
    if (err.response?.statusCode == tokenExpiredStatus) {
      // final signupRepo = SignupRepositoryImpl();
      // final response = await signupRepo.refreshToken();
      // if (response.success ?? false) {
      //   handler.resolve(await dio.fetch(err.requestOptions));
      // }
    } else {
      // ToastMessage.FailMessage(
      //     err.response?.data["message"] ?? "Something went wrong");
    }
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }
}
