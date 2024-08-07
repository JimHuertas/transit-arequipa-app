import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:route_master_app/config/buses_config.dart';
import 'package:route_master_app/presentation/providers/search_my_location_provider.dart';

class RutasTransportePage extends StatefulWidget {
  const RutasTransportePage({super.key});

  @override
  State<RutasTransportePage> createState() => _RutasTransportePageState();
}

class RutasTransportePage2 extends ConsumerWidget {
  const RutasTransportePage2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapHeight = MediaQuery.of(context).size.height * 63 / 100;

    final polylines = ref.watch(polylinesProvider);
    final polylinesNotifier = ref.read(polylinesProvider.notifier);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Rutas de Combis"),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 200.0,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: busesList.map(
                  (busInfo) {
                    return GestureDetector(
                      onTapDown: (TapDownDetails details) {
                        showMenu(
                                context: context,
                                position: RelativeRect.fromLTRB(
                                  details.globalPosition.dx,
                                  details.globalPosition.dy,
                                  details.globalPosition.dx,
                                  details.globalPosition.dy,
                                ),
                                items: busInfo["menuOptions"]
                                    as List<PopupMenuEntry<String>>)
                            .then((String? value) {
                              if(value != null){
                                polylinesNotifier.addPolylineForSelectedRoute(value);
                              }
                        });
                      },
                      child: Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(235, 235, 235, 1),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          width: 150.0,
                          child: Column(
                            children: [
                              busInfo["image"],
                              Text(
                                busInfo["title"],
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                busInfo["rutas"],
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              )
                            ],
                          )),
                    );
                  },
                ).toList()),
          ),
          Container(
              color: Colors.red,
              width: double.infinity,
              height: mapHeight,
              child: GoogleMap(
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                buildingsEnabled: false,
                initialCameraPosition: const CameraPosition(
                  target: LatLng(-16.384860, -71.569732),
                  zoom: 14.0,
                ),
                polylines: {polylines},
              ),
            ),
        ])));
  }
}

class _RutasTransportePageState extends State<RutasTransportePage> {
  static const LatLng startLocation = LatLng(-16.384860, -71.569732);

  final List<Map<String, dynamic>> routes = [
    {'color': Colors.red, 'detail': 'Detalle de Ruta 1'},
    {'color': Colors.green, 'detail': 'Detalle de Ruta 2'},
    {'color': Colors.blue, 'detail': 'Detalle de Ruta 3'},
    {'color': Colors.orange, 'detail': 'Detalle de Ruta 4'},
    {'color': Colors.purple, 'detail': 'Detalle de Ruta 5'},
  ];

  @override
  Widget build(BuildContext context) {
    final mapHeight = MediaQuery.of(context).size.height * 63 / 100;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Rutas de Combis"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200.0,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: busesList.map(
                    (busInfo) {
                      return GestureDetector(
                        onTapDown: (TapDownDetails details) {
                          showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    details.globalPosition.dx,
                                    details.globalPosition.dy,
                                    details.globalPosition.dx,
                                    details.globalPosition.dy,
                                  ),
                                  items: busInfo["menuOptions"]
                                      as List<PopupMenuEntry<String>>)
                              .then((String? value) {});
                        },
                        child: Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(235, 235, 235, 1),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            width: 150.0,
                            child: Column(
                              children: [
                                busInfo["image"],
                                Text(
                                  busInfo["title"],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  busInfo["rutas"],
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.black54),
                                )
                              ],
                            )),
                      );
                    },
                  ).toList()),
            ),

            Container(
              color: Colors.red,
              width: double.infinity,
              height: mapHeight,
              child: const GoogleMap(
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                buildingsEnabled: false,
                padding: EdgeInsets.only(bottom: 70),
                initialCameraPosition:
                    CameraPosition(target: startLocation, zoom: 15),
              ),
            )

            // const GoogleMap(
            //   myLocationEnabled: true,
            //   myLocationButtonEnabled: false,
            //   buildingsEnabled: false,
            //   padding: EdgeInsets.only(bottom: 70),
            //   initialCameraPosition: CameraPosition(target: startLocation, zoom: 15),
            // ),
            // Expanded(
            //   child: ListView(
            //     children: [
            //       Container(
            //         height: 100.0,
            //         color: Colors.red[100],
            //         child: Center(child: Text('Detalle de Ruta 1')),
            //       ),
            //       Container(
            //         height: 100.0,
            //         color: Colors.green[100],
            //         child: Center(child: Text('Detalle de Ruta 2')),
            //       ),
            //       Container(
            //         height: 100.0,
            //         color: Colors.blue[100],
            //         child: Center(child: Text('Detalle de Ruta 3')),
            //       ),
            //       Container(
            //         height: 100.0,
            //         color: Colors.orange[100],
            //         child: Center(child: Text('Detalle de Ruta 4')),
            //       ),
            //       Container(
            //         height: 100.0,
            //         color: Colors.purple[100],
            //         child: Center(child: Text('Detalle de Ruta 5')),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
