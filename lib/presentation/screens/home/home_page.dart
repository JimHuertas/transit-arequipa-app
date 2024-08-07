import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:route_master_app/config/constants.dart';
import 'package:route_master_app/presentation/screens/home/features/main_map.dart';

import 'features/dragabble_menu.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({super.key});

  @override
  State<OrderTrackingPage> createState() => _OrderTrackingPageState();
}

class _OrderTrackingPageState extends State<OrderTrackingPage> {
  final DraggableScrollableController scrollableController =
      DraggableScrollableController();

  void retractBottomSheet() {
    scrollableController.animateTo(
      0.1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng startLocation = LatLng(-16.384860, -71.569732);
  static const LatLng endLocation = LatLng(-16.390028, -71.568194);
  // static LatLng centerPositionLocation = LatLng(-16.3992342, -71.5370862);

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((location) {})
        .onError((error, stackTrace) async {
      await Geolocator.requestPermission();
      FlutterError(error.toString());
    });
    setState(() {});
    return await Geolocator.getCurrentPosition();
  }

  final Set<Marker> markers = {
    const Marker(markerId: MarkerId("source"), position: startLocation),
    const Marker(markerId: MarkerId("destination"), position: endLocation),
  };

  List<LatLng> polylineCoordinates = [];

  void getPoly() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        request: PolylineRequest(
            origin:
                PointLatLng(startLocation.latitude, startLocation.longitude),
            destination:
                PointLatLng(endLocation.latitude, endLocation.longitude),
            mode: TravelMode.driving),
        googleApiKey: googleApiKey);
    if (result.points.isNotEmpty) {
      for (final PointLatLng point in result.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }
      setState(() {});
    }
  }

  @override
  void initState() {
    getUserCurrentLocation();
    getPoly();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 150,
      //   title: Center( child: const Text("Conoce las rutas",
      //         style: TextStyle(color: Colors.black, fontSize: 16)),
      //   ),
      // ),
      body: Stack(children: [
        MainMap(retractBottomSheet),
        DraggableScrollableSheet(
          controller: scrollableController,
          initialChildSize: 0.05,
          minChildSize: 0.05,
          maxChildSize: 0.53,
          builder: (context, scrollController) {
            return DraggabbleMenu(scrollController: scrollController);
          },
        ),
      ]),
      floatingActionButton: _floatingButtonCurrentLocation(),
    );
  }

  Widget _floatingButtonCurrentLocation() {
    return FloatingActionButton(
      onPressed: () async {
        getUserCurrentLocation().then((value) async {
          print("ALTOUE ESTOY AQUI: " +
              value.latitude.toString() +
              value.longitude.toString());
          markers.add(Marker(
            markerId: const MarkerId("2"),
            position: LatLng(value.latitude, value.longitude),
            infoWindow: const InfoWindow(
              title: 'My Current Location',
            ),
          ));

          CameraPosition cameraPosition = CameraPosition(
            target: LatLng(value.latitude, value.longitude),
            zoom: 14,
          );

          final GoogleMapController controller = await _controller.future;
          controller
              .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
          setState(() {});
        });
      },
      child: const Icon(Icons.my_location),
    );
  }
}
