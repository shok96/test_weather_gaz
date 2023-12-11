import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:testweathergaz/ui/res/images.dart';
import 'package:geocoding/geocoding.dart';

import '../../../../ui/res/svg.dart';

part 'geolocator_models.freezed.dart';

@freezed
class GeolocatorModel with _$GeolocatorModel {
  const factory GeolocatorModel({
    Position? position,
    List<Placemark>? placemark,
    required GeolocatorStatus status,
  }) = _GeolocatorModel;
}

@freezed
class GeolocatorStatus with _$GeolocatorStatus {
  const factory GeolocatorStatus.init() = _InitGeolocatorStatus;

  const factory GeolocatorStatus.success({
    required Position position,
    required List<Placemark> placemark,
  }) = _SuccessGeolocatorStatus;

  const factory GeolocatorStatus.disabled() = _DisabledGeolocatorStatus;

  const factory GeolocatorStatus.deined() = _DeniedGeolocatorStatus;

  const factory GeolocatorStatus.deinedForever() = _DeniedForeverGeolocatorStatus;

  const factory GeolocatorStatus.permanent() = _PermanentGeolocatorStatus;
}
