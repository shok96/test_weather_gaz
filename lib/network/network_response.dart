import 'package:freezed_annotation/freezed_annotation.dart';

import 'network_exception.dart';

part 'network_response.freezed.dart';

@freezed
class Response<T> with _$Response<T> {
  const Response._();
  const factory Response.data(T data) = DataResponse;

  const factory Response.exception(RequestException exception) =
  ExceptionResponse;

  Response<List<C>> castList<C>() {
    return map(
      data: (data) {
        if (data.data is! Iterable) {
          throw ArgumentError();
        }

        final list = (data.data as Iterable).toList();
        return Response<List<C>>.data(list.cast<C>());
      },
      exception: (exception) =>
      Response<List<C>>.exception(exception.exception),
    );
  }

  Response<C> cast<C>() {
    return map(
      data: (data) => Response<C>.data(data.data as C),
      exception: (exception) => Response<C>.exception(exception.exception),
    );
  }
}