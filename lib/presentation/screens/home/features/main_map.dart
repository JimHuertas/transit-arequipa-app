import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:route_master_app/config/constants.dart';
import 'package:route_master_app/presentation/providers/search_my_location_provider.dart';

class MainMap extends ConsumerWidget {
  final Function retractBottomSheet;
  final Set<Marker> markers = {
    const Marker(markerId: MarkerId("source"), position: startLocation),
    const Marker(markerId: MarkerId("destination"), position: endLocation),
  };

  MainMap(
    this.retractBottomSheet, {
    super.key,
  });

  static const LatLng startLocation = LatLng(-16.384860, -71.569732);
  static const LatLng endLocation = LatLng(-16.390028, -71.568194);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocation = ref.watch(myPositionProvider);
    final polylineCoordinates = ref.watch(listPolyLinesProvider);

    return currentLocation.when(
        data: (data) {
          return GoogleMap(
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            buildingsEnabled: false,
            onCameraMoveStarted: () {
              retractBottomSheet();
            },
            padding: const EdgeInsets.only(bottom: 70),
            initialCameraPosition: CameraPosition(target: data, zoom: 15),
            polylines: {
              Polyline(
                  polylineId: const PolylineId("route"),
                  points: polylineCoordinates.when(
                    data: (data) => data, 
                    error: (error, stackTrace) => [], 
                    loading: () => [],
                  ),
                  color: primaryColor,
                  width: 8)
            },
            markers: markers,
          );
        },
        error: (error, stackTrace) {
          print(error);
          return const Center(
            child: Text(
                "Error al cargar el mapa, porfavor verifica los permisos de ubicación"),
          );
        },
        loading: () => const Center(
          child: Center(child: CircularProgressIndicator()),
        ),
        // loading: () => Container(
        //   color: Colors.white,
        //   height: double.infinity,
        //   width: double.infinity,
        //   child: Center(
        //     child: Image.asset(
        //       GIFs.busWaitGIF,
        //       height: 145.0,
        //       width: 145.0,
        //     ),
        //   ),
        // ),
      );
  }
}
