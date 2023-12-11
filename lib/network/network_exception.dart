import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

@freezed
class RequestException with _$RequestException {
  const factory RequestException.serverError() = ServerErrorRequestException;

  const factory RequestException.authFailed() = AuthFailedRequestException;

  const factory RequestException.accessDenied() = AccessDeniedRequestException;

  const factory RequestException.networkFailure() =
  NetworkFailureRequestException;

  const factory RequestException.notFound() = NotFoundRequestException;

  const factory RequestException.badRequest(Map<String, dynamic>? message) =
  BadRequestRequestException;

  const factory RequestException.tryCatch() =
  TryCatchRequestException;
}