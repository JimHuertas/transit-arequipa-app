import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:route_master_app/config/constants.dart';
import 'package:route_master_app/config/rutas.dart';

final myPositionProvider = FutureProvider<LatLng>((ref) async {
  await Geolocator.requestPermission()
      .then((location) {})
      .onError((error, stackTrace) async {
    await Geolocator.requestPermission();
    FlutterError(error.toString());
  });

  final myPositionRequest = await Geolocator.getCurrentPosition();

  return LatLng(myPositionRequest.latitude, myPositionRequest.longitude);
});

final listPolyLinesProvider = FutureProvider<List<LatLng>>((ref) async {
  const LatLng startLocation = LatLng(-16.384860, -71.569732);
  const LatLng endLocation = LatLng(-16.390028, -71.568194);
  final List<LatLng> polylineCoordinates = [];

  PolylinePoints polylinePoints = PolylinePoints();
  PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      request: PolylineRequest(
          origin: PointLatLng(startLocation.latitude, startLocation.longitude),
          destination: PointLatLng(endLocation.latitude, endLocation.longitude),
          mode: TravelMode.driving),
      googleApiKey: googleApiKey);
  if (result.points.isNotEmpty) {
    for (final PointLatLng point in result.points) {
      polylineCoordinates.add(LatLng(point.latitude, point.longitude));
    }
  }

  return polylineCoordinates;
});

//Para dibujar las rutas
class PolylinesNotifier extends StateNotifier<Polyline> {
  PolylinesNotifier() : super(const Polyline(polylineId: PolylineId("INIT")));

  Future<void> addRoutePolyline(LatLng start, LatLng end, List<PolylineWayPoint> wayPoints,Color color, String value) async {
    List<LatLng> polylineCoordinates = [];

    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        googleApiKey: googleApiKey,
        request: PolylineRequest(
            origin: PointLatLng(start.latitude, start.longitude),
            destination: PointLatLng(end.latitude, end.longitude),
            wayPoints: wayPoints,
            mode: TravelMode.driving));

    if (result.points.isNotEmpty) {
      for (final PointLatLng point in result.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }
    }

    final polyline = Polyline(
      polylineId: PolylineId(value),
      color: color,
      points: polylineCoordinates,
      width: 2
    );

    state = polyline;
  }

  Future<void> addPolylineForSelectedRoute(String value) async {
    clearPolylines();

    switch (value) {
      case "3DeOctA":
        await addRoutePolyline(
          rutaCotumAida["startLocation"], 
          rutaCotumAida["endLocation"], 
          rutaCotumAida["wayPoints"],
          routesColor[0]["color"],
          "3DeOctA"
        );
        break;
      default:
    }
  }

  void clearPolylines() {
    state = const Polyline(polylineId: PolylineId("INIT"));
  }
}

final polylinesProvider =
    StateNotifierProvider<PolylinesNotifier, Polyline>((ref) {
  return PolylinesNotifier();
});

// //Cambio de index para el titulo del mapa
// class SelectedRouteNotifier extends StateNotifier<int> {
//   SelectedRouteNotifier(this.ref) : super(0);

//   final ProviderReference ref;

//   void selectRoute(int index) {
//     state = index;
//   }

//   Future<void> addPolylineForSelectedRoute(LatLng start, LatLng end, String googleApiKey, Color color) async {
//     await ref.read(polylinesProvider.notifier).addRoutePolyline(start, end, googleApiKey, color);
//   }
// }

// final selectedRouteProvider = StateNotifierProvider<SelectedRouteNotifier, int>((ref) {
//   return SelectedRouteNotifier(ref);
// });