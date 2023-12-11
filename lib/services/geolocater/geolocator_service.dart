import 'dart:async';
import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/widgets.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:testweathergaz/services/geolocater/models/geolocator_models.dart';

class GeolocatorService {
  GeolocatorService._() {
    _streamController.add(model);
  }

  static GeolocatorService? _instanse;

  static GeolocatorService get instanse {
    _instanse ??= GeolocatorService._();
    return _instanse!;
  }

  final StreamController<GeolocatorModel> _streamController =
      StreamController.broadcast();

  Stream<GeolocatorModel> get stream => _streamController.stream;

  GeolocatorModel model =
      const GeolocatorModel(status: GeolocatorStatus.init());

  Future<LocationPermission> get checkPermission async =>
      await Geolocator.checkPermission();

  Future<LocationPermission> get requestPermission async =>
      await Geolocator.requestPermission();

  Future<bool> get isLocationServiceEnabled async =>
      await Geolocator.isLocationServiceEnabled();

  Future determinePosition() async {
    // Test if location services are enabled.
    final serviceEnabled = await isLocationServiceEnabled;
    if (!serviceEnabled) {
      const status = GeolocatorStatus.disabled();
      model = model.copyWith(
        status: status,
      );
      _streamController.add(model);
      return Future.error(status);
    }

    final checkPermissionRaw = await checkPermission;
    if (checkPermissionRaw == LocationPermission.denied) {
      final permissionRequest = await requestPermission;
      if (permissionRequest == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        const status = GeolocatorStatus.deined();
        model = model.copyWith(
          status: status,
        );
        _streamController.add(model);
        return Future.error(status);
      } else if(permissionRequest == LocationPermission.deniedForever){
        const status = GeolocatorStatus.deinedForever();
        model = model.copyWith(
          status: status,
        );
        _streamController.add(model);
        return Future.error(status);
      }
    }

    final checkPermissionFinal = await checkPermission;
    if (checkPermissionFinal == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      if(Platform.isIOS){
        const status = GeolocatorStatus.deinedForever();
        model = model.copyWith(
          status: status,
        );
        _streamController.add(model);
        return Future.error(status);
      }
      const status = GeolocatorStatus.permanent();
      model = model.copyWith(
        status: status,
      );
      _streamController.add(model);
      return Future.error(status);
    }

    if (checkPermissionFinal != LocationPermission.denied &&
        checkPermissionFinal != LocationPermission.deniedForever) {
      // When we reach here, permissions are granted and we can
      // continue accessing the position of the device.
      final position = await Geolocator.getCurrentPosition();
      List<Placemark> location = [];
      try {
        location =
        await placemarkFromCoordinates(position.latitude, position.longitude);
      }
      catch(e){}
      final status = GeolocatorStatus.success(
        position: position,
        placemark: location,
      );
      model = model.copyWith(
        status: status,
      );
      _streamController.add(model);
      return;
    }
    else{
      const status = GeolocatorStatus.deined();
      model = model.copyWith(
        status: status,
      );
      _streamController.add(model);
      return Future.error(status);
    }
  }
}
