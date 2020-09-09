import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_with_panel_sample/view/map_view_controller.dart';
import 'package:provider/provider.dart';

const double kDefaultZoom = 12.0;
const CameraPosition kDefaultCameraPosition = CameraPosition(
  target: LatLng(35.6812405, 139.7649361),
  zoom: kDefaultZoom,
);

class MapView extends StatelessWidget {
  const MapView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: ChangeNotifierProvider(
        create: (context) => MapViewController(context),
        child: Consumer<MapViewController>(
          builder: (context, viewController, _) {
            var points = viewController.state.points;
            var markers = points
                .map((e) => Marker(
                      markerId: MarkerId(e.id.toString()),
                      position: LatLng(e.latitude, e.longitude),
                      onTap: () => viewController.onTapPoint(e),
                    ))
                .toSet();
            return GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: kDefaultCameraPosition,
              mapToolbarEnabled: false,
              myLocationEnabled: false,
              myLocationButtonEnabled: false,
              rotateGesturesEnabled: false,
              onMapCreated: (controller) {
                viewController.setMapController(controller);
              },
              onTap: viewController.onMapTap,
              markers: markers,
              gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                Factory<OneSequenceGestureRecognizer>(
                  () => EagerGestureRecognizer(),
                ),
              },
            );
          },
        ),
      ),
    );
  }
}
