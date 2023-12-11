import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_strategy.freezed.dart';

@freezed
class RequestStrategy with _$RequestStrategy {
  const factory RequestStrategy.post({
    dynamic json,
    Map<String, String>? query,
  }) = PostRequestStrategy;

  const factory RequestStrategy.get(Map<String, dynamic>? query) =
  GetRequestStrategy;

  const factory RequestStrategy.put(
      dynamic json,
      Map<String, dynamic>? query,
      ) = PutRequestStrategy;

  const factory RequestStrategy.delete({
    dynamic json,
    Map<String, dynamic>? query,
  }) = DeleteRequestStrategy;

  const factory RequestStrategy.patch({
    dynamic json,
    Map<String, dynamic>? query,
  }) = PatchRequestStrategy;
}