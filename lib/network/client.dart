import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart' as dio;
import 'package:testweathergaz/features/splash/views/cubit/splash_cubit.dart';

import '../constants/constants.dart';
import 'api_interfaces.dart';
import 'network_exception.dart';
import 'network_response.dart';
import 'request_strategy.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

typedef Deserializator<T> = T Function(Map<String, dynamic> json);

abstract class ApiClient {
  ApiClient(this.splashCubit) {}

  final SplashCubit splashCubit;

  static const _contentTypeHeader = 'Content-Type';

  Duration get requestTimeout => const Duration(seconds: 20);

  Duration get receiveTimeout => const Duration(seconds: 20);

  String get baseUrl;

  dio.BaseOptions get _baseOptions => dio.BaseOptions(
        connectTimeout: requestTimeout,
        receiveTimeout: receiveTimeout,
        listFormat: dio.ListFormat.multiCompatible,
      );

  late final _dioClient = dio.Dio(_baseOptions)
    ..interceptors.addAll([
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: false,
        maxWidth: 130,
      ),
    ]);

  RequestException _getError(dio.DioError e) {
    Map<String, dynamic> badRequestError(dynamic data) {
      if (data is Map<String, dynamic>) {
        return data;
      }
      if (data is String) {
        return jsonDecode(data) as Map<String, dynamic>;
      }
      return {'error': data.toString()};
    }

    switch (e.type) {
      case dio.DioErrorType _:
        final statusCode = e.response!.statusCode;
        late final RequestException requestException;
        if (statusCode == 401) {
          requestException = const RequestException.authFailed();
        } else if (statusCode == 403) {
          requestException = const RequestException.accessDenied();
        } else if (statusCode == 404) {
          requestException = const RequestException.notFound();
        } else if (statusCode == 400 || statusCode == 422) {
          requestException = RequestException.badRequest(
            badRequestError(e.response!.data),
          );
        } else {
          requestException = const RequestException.serverError();
        }
        return requestException;

      default:
        return const RequestException.networkFailure();
    }
  }

  Future<Response<T>> _request<T>({
    required String path,
    required RequestStrategy strategy,
    required Deserializator? deserializator,
    bool responseBytes = false,
    bool multiPartData = false,
    dio.FormData? formData,
  }) async {
    try {
      _dioClient.options.headers[_contentTypeHeader] =
          dio.Headers.jsonContentType;
      _dioClient.options.baseUrl = baseUrl;
      final raw = await strategy.map(
        post: (post) => _dioClient.post(
          path,
          data: post.json,
          queryParameters: post.query,
          options: responseBytes
              ? dio.Options(responseType: dio.ResponseType.bytes)
              : null,
        ),
        get: (get) {
          final query = {...?get.query, "appId":splashCubit.state.key};
          return _dioClient.get(
          path,
          queryParameters: query,
          options: responseBytes
              ? dio.Options(responseType: dio.ResponseType.bytes)
              : null,
        );
        },
        put: (put) => _dioClient.put(
          path,
          data: multiPartData && formData != null ? formData : put.json,
          queryParameters: put.query,
          options: responseBytes
              ? dio.Options(responseType: dio.ResponseType.bytes)
              : null,
        ),
        delete: (delete) => _dioClient.delete(
          path,
          queryParameters: delete.query,
          options: responseBytes
              ? dio.Options(responseType: dio.ResponseType.bytes)
              : null,
        ),
        patch: (patch) => _dioClient.patch(
          path,
          data: patch.json,
          queryParameters: patch.query,
          options: responseBytes
              ? dio.Options(responseType: dio.ResponseType.bytes)
              : null,
        ),
      );

      // FormData formData = FormData.fromMap({
      //   "name": "<new_name>",
      //   "phone": "<new_phone>",
      //   "employe": "<new_employe_id>",
      //   "image": await MultipartFile.fromFile(filePath, filename: filePath.split("/").last),
      //   "office": "<new_office>",
      // });

      final rawData = raw.data;

      if (deserializator == null) {
        // ignore: prefer_const_constructors
        return Response.data(raw.data as T);
      }

      if (rawData is Iterable) {
        final list = SyncDeserializator.list(rawData, deserializator);
        return Response.data(list as T);
      }
      final dto = SyncDeserializator.single<T>(
        rawData,
        deserializator as Deserializator<T>,
      );
      return Response.data(dto);
    } on dio.DioError catch (e) {
      return Response.exception(_getError(e));
    }
  }

  Future<Response<T>> requestObject<T>({
    required String path,
    required RequestStrategy strategy,
    Deserializator<T>? deserializator,
    bool responseBytes = false,
    bool multiPartData = false,
    dio.FormData? formData,
  }) async {
    return _request<T>(
      multiPartData: multiPartData,
      path: path,
      formData: formData,
      strategy: strategy,
      deserializator: deserializator,
      responseBytes: responseBytes,
    );
  }
}

class SyncDeserializator {
  static T single<T>(
    dynamic rawData,
    Deserializator<T> deserializator,
  ) {
    if (rawData is String) {
      return deserializator(jsonDecode(rawData) as Map<String, dynamic>);
    }
    return deserializator(rawData as Map<String, dynamic>);
  }

  static List<T> list<T>(
    dynamic rawData,
    Deserializator<T> deserializator,
  ) {
    return (rawData as Iterable)
        .map((e) => deserializator(e as Map<String, dynamic>))
        .toList();
  }
}
