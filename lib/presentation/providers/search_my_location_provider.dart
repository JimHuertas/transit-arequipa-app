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

  Future<void> addRoutePolyline(LatLng start, LatLng end,
      List<PolylineWayPoint> wayPoints, Color color, String value) async {
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
        width: 2);

    state = polyline;
  }

  Future<void> addPolylineForSelectedRoute(String value) async {
    clearPolylines();

    switch (value) {

      // C11 Cotum

      case "CotumA":
        await addRoutePolyline(
          rutaCotumAida["startLocation"], 
          rutaCotumAida["endLocation"], 
          rutaCotumAida["wayPoints"],
          routesColor[0]["color"],
          "CotumA");
        await addRoutePolyline(
          rutaCotumARegreso["startLocation"], 
          rutaCotumARegreso["endLocation"], 
          rutaCotumARegreso["wayPoints"],
          routesColor[1]["color"],
          "CotumA");    
        break;

      case "CotumB":
        await addRoutePolyline(
            rutaCotumBIda["startLocation"],
            rutaCotumBIda["endLocation"],
            rutaCotumBIda["wayPoints"],
            routesColor[0]["color"],
            "CotumB");
        await addRoutePolyline(
            rutaCotumBRegreso["startLocation"],
            rutaCotumBRegreso["endLocation"],
            rutaCotumBRegreso["wayPoints"],
            routesColor[1]["color"],
            "CotumB");            
        break;

      case "CotumM":
        await addRoutePolyline(
            rutaCotumMIda["startLocation"],
            rutaCotumMIda["endLocation"],
            rutaCotumMIda["wayPoints"],
            routesColor[0]["color"],
            "CotumM");
        await addRoutePolyline(
            rutaCotumMRegreso["startLocation"],
            rutaCotumMRegreso["endLocation"],
            rutaCotumMRegreso["wayPoints"],
            routesColor[1]["color"],
            "CotumM");            
        break;

      //C9 3 de Octubre

      case "3DeOctA":
        await addRoutePolyline(
          ruta3OctAIda["startLocation"], 
          ruta3OctAIda["endLocation"], 
          ruta3OctAIda["wayPoints"],
          routesColor[0]["color"],
          "3DeOctA");
        await addRoutePolyline(
          ruta3OctARegreso["startLocation"], 
          ruta3OctARegreso["endLocation"], 
          ruta3OctARegreso["wayPoints"],
          routesColor[1]["color"],
          "3DeOctA");          
        break;

      case "3DeOctB":
        await addRoutePolyline(
            ruta3OctBIda["startLocation"],
            ruta3OctBIda["endLocation"],
            ruta3OctBIda["wayPoints"],
            routesColor[0]["color"],
            "3DeOctB");
        await addRoutePolyline(
            ruta3OctBRegreso["startLocation"],
            ruta3OctBRegreso["endLocation"],
            ruta3OctBRegreso["wayPoints"],
            routesColor[1]["color"],
            "3DeOctB");            
        break;

      case "3DeOctC":
        await addRoutePolyline(
            ruta3OctCIda["startLocation"],
            ruta3OctCIda["endLocation"],
            ruta3OctCIda["wayPoints"],
            routesColor[0]["color"],
            "3DeOctC");
        await addRoutePolyline(
            ruta3OctCRegreso["startLocation"],
            ruta3OctCRegreso["endLocation"],
            ruta3OctCRegreso["wayPoints"],
            routesColor[1]["color"],
            "3DeOctC");          
        break;

      // C4 Unión AQP

      case "Graficos":
        await addRoutePolyline(
            rutaGraficosIda["startLocation"],
            rutaGraficosIda["endLocation"],
            rutaGraficosIda["wayPoints"],
            routesColor[0]["color"],
            "Graficos");
        await addRoutePolyline(
            rutaGraficosRegreso["startLocation"],
            rutaGraficosRegreso["endLocation"],
            rutaGraficosRegreso["wayPoints"],
            routesColor[1]["color"],
            "Graficos");            
        break;

      case "Polanco":
        await addRoutePolyline(
            rutaPolancoIda["startLocation"],
            rutaPolancoIda["endLocation"],
            rutaPolancoIda["wayPoints"],
            routesColor[0]["color"],
            "Polanco");
        await addRoutePolyline(
            rutaPolancoRegreso["startLocation"],
            rutaPolancoRegreso["endLocation"],
            rutaPolancoRegreso["wayPoints"],
            routesColor[1]["color"],
            "Polanco");          
        break;

      case "RutaC":
        await addRoutePolyline(
            rutaCIda["startLocation"],
            rutaCIda["endLocation"],
            rutaCIda["wayPoints"],
            routesColor[0]["color"],
            "RutaC");
        await addRoutePolyline(
            rutaCRegreso["startLocation"],
            rutaCRegreso["endLocation"],
            rutaCRegreso["wayPoints"],
            routesColor[1]["color"],
            "RutaC");            
        break;

      case "A15":
        await addRoutePolyline(
            rutaA15Ida["startLocation"],
            rutaA15Ida["endLocation"],
            rutaA15Ida["wayPoints"],
            routesColor[0]["color"],
            "A15");
        await addRoutePolyline(
            rutaA15Regreso["startLocation"],
            rutaA15Regreso["endLocation"],
            rutaA15Regreso["wayPoints"],
            routesColor[1]["color"],
            "A15");            
        break;

      case "altoselva":
        await addRoutePolyline(
            rutaASAIda["startLocation"],
            rutaASAIda["endLocation"],
            rutaASAIda["wayPoints"],
            routesColor[0]["color"],
            "altoselva");
        await addRoutePolyline(
            rutaASARegreso["startLocation"],
            rutaASARegreso["endLocation"],
            rutaASARegreso["wayPoints"],
            routesColor[1]["color"],
            "altoselva");
        break;

      case "RutaD":
        await addRoutePolyline(
            rutaDIda["startLocation"],
            rutaDIda["endLocation"],
            rutaDIda["wayPoints"],
            routesColor[0]["color"],
            "RutaD");
        await addRoutePolyline(
            rutaDRegreso["startLocation"],
            rutaDRegreso["endLocation"],
            rutaDRegreso["wayPoints"],
            routesColor[1]["color"],
            "RutaD");
        break;

      case "bjuanxxiii":
        await addRoutePolyline(
            rutaJuanIda["startLocation"],
            rutaJuanIda["endLocation"],
            rutaJuanIda["wayPoints"],
            routesColor[0]["color"],
            "bjuanxxiii");
        await addRoutePolyline(
            rutaJuanRegreso["startLocation"],
            rutaJuanRegreso["endLocation"],
            rutaJuanRegreso["wayPoints"],
            routesColor[1]["color"],
            "bjuanxxiii");
        break;

      //C3 TransCayma

      case "Zamacola":
        await addRoutePolyline(
            rutaZamacolaIda["startLocation"],
            rutaZamacolaIda["endLocation"],
            rutaZamacolaIda["wayPoints"],
            routesColor[0]["color"],
            "Zamacola");
        await addRoutePolyline(
            rutaZamacolaRegreso["startLocation"],
            rutaZamacolaRegreso["endLocation"],
            rutaZamacolaRegreso["wayPoints"],
            routesColor[1]["color"],
            "Zamacola");
        break;

      case "Enace":
        await addRoutePolyline(
            rutaEnaceIda["startLocation"],
            rutaEnaceIda["endLocation"],
            rutaEnaceIda["wayPoints"],
            routesColor[0]["color"],
            "Enace");
        await addRoutePolyline(
            rutaEnaceRegreso["startLocation"],
            rutaEnaceRegreso["endLocation"],
            rutaEnaceRegreso["wayPoints"],
            routesColor[1]["color"],
            "Enace");
        break;

      case "Casimiro":
        await addRoutePolyline(
            rutaCasimiroIda["startLocation"],
            rutaCasimiroIda["endLocation"],
            rutaCasimiroIda["wayPoints"],
            routesColor[0]["color"],
            "Casimiro");
        await addRoutePolyline(
            rutaCasimiroRegreso["startLocation"],
            rutaCasimiroRegreso["endLocation"],
            rutaCasimiroRegreso["wayPoints"],
            routesColor[1]["color"],
            "Casimiro");
        break;

      case "Chapi":
        await addRoutePolyline(
            rutaChapiIda["startLocation"],
            rutaChapiIda["endLocation"],
            rutaChapiIda["wayPoints"],
            routesColor[0]["color"],
            "Chapi");
        await addRoutePolyline(
            rutaChapiRegreso["startLocation"],
            rutaChapiRegreso["endLocation"],
            rutaChapiRegreso["wayPoints"],
            routesColor[1]["color"],
            "Chapi");
        break;

      case "Embajada":
        await addRoutePolyline(
            rutaEmbajadaIda["startLocation"],
            rutaEmbajadaIda["endLocation"],
            rutaEmbajadaIda["wayPoints"],
            routesColor[0]["color"],
            "Embajada");
        await addRoutePolyline(
            rutaEmbajadaRegreso["startLocation"],
            rutaEmbajadaRegreso["endLocation"],
            rutaEmbajadaRegreso["wayPoints"],
            routesColor[1]["color"],
            "Embajada");
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
