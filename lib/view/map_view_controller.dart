import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_with_panel_sample/entity/point.dart';
import 'package:map_with_panel_sample/view/map_view_state.dart';
import 'package:map_with_panel_sample/view/point_description_view.dart';
import 'package:provider/provider.dart';

final points = <Point>[
  Point(id: 0, latitude: 35.6812405, longitude: 139.7649361),
  Point(id: 1, latitude: 35.73, longitude: 139.7949361),
  Point(id: 2, latitude: 35.67, longitude: 139.77),
  Point(id: 3, latitude: 35.69, longitude: 139.71),
  Point(id: 4, latitude: 35.6812405, longitude: 139.8),
];

class MapViewController extends ChangeNotifier {
  final BuildContext context;
  final Completer<GoogleMapController> _completer = Completer();
  MapViewState _state = MapViewState();

  Future<GoogleMapController> get controller async => await _completer.future;
  MapViewState get state => _state;

  MapViewController(this.context) {
    _state = state.copyWith(points: points);
  }

  void setMapController(GoogleMapController controller) {
    _completer.complete(controller);
  }

  Future<void> onMapTap(LatLng target) async {
    var googleMapController = await controller;
    await googleMapController.animateCamera(CameraUpdate.newLatLng(target));
  }

  Future<void> onTapPoint(Point point) async {
    var position = CameraPosition(target: LatLng(point.latitude, point.longitude), zoom: 18);
    var googleMapController = await controller;
    await googleMapController.animateCamera(CameraUpdate.newCameraPosition(position));
    _state = state.copyWith(focusPoint: point, onTapPoint: true);
    notifyListeners();

    await Navigator.of(context).push(
      PageRouteBuilder<RoutePageBuilder>(
        pageBuilder: (context, animation, secondaryAnimation) {
          return ListenableProvider(
            create: (context) => animation,
            child: const PointDescriptionView(),
          );
        },
        opaque: false,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    );
  }
}
