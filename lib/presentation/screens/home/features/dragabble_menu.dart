import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:route_master_app/presentation/screens/home/features/icon_three_lines.dart';
import 'package:route_master_app/presentation/screens/home/features/map_selection.dart';
import 'package:route_master_app/presentation/screens/rutas-transporte/rutas_transporte_page.dart';

class DraggabbleMenu extends StatefulWidget {
  final ScrollController scrollController;

  const DraggabbleMenu({super.key, required this.scrollController});

  @override
  State<DraggabbleMenu> createState() => _DraggabbleMenuState();
}

class _DraggabbleMenuState extends State<DraggabbleMenu> {
  final TextEditingController _addressControllerOrigin =
      TextEditingController();
  // final TextEditingController _addressControllerDestino =
  //     TextEditingController();

  Future<void> _selectLocationOrigin() async {
    LatLng? selectedLocation = await Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const MapSelectionScreen()),
    );

    if (selectedLocation != null) {
      setState(() {
        _addressControllerOrigin.text =
            'Lat: ${selectedLocation.latitude}, Lng: ${selectedLocation.longitude}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final half20Screen = MediaQuery.of(context).size.width * 19 / 100;
    final half80Screen = MediaQuery.of(context).size.width * 55.5 / 100;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.all(0),
              height: 5,
              alignment: Alignment.topCenter,
              child: const Icon(
                Icons.drag_handle_rounded,
                color: Colors.black,
              )),
          Expanded(
            child: ListView(
              controller: widget.scrollController,
              children: <Widget>[
                const SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: Center(
                    child: Text(
                      "Introduce tu Ruta:",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'ProximaNova',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Column(
                      children: <Widget>[
                        Icon(
                          Icons.directions_bus,
                          size: 30,
                        ),
                        Center(
                            child: Text(
                          "Bus",
                          style: TextStyle(fontSize: 12),
                        )),
                      ],
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(34, 85, 127, 1),
                            borderRadius: BorderRadius.circular(20)),
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 5 / 100,
                            right: MediaQuery.of(context).size.width * 5 / 100),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const RutasTransportePage2(),
                                  ));
                            },
                            child: const Text(
                              "Consulta las rutas",
                              style: TextStyle(color: Colors.white),
                            )))
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  child: Container(
                    padding: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 2,
                          color: const Color.fromRGBO(158, 158, 158, 0.6)),
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(30),
                        bottom: Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: half20Screen,
                          height: 180,
                          child: const Column(
                            children: <Widget>[
                              Icon(
                                Icons.trip_origin_outlined,
                                color: Color.fromRGBO(148, 188, 221, 1),
                              ),
                              SizedBox(height: 5),
                              CustomThreeLinesIcon(),
                              CustomThreeLinesIcon(),
                              SizedBox(height: 5),
                              Icon(
                                Icons.trip_origin_outlined,
                                color: Color.fromRGBO(235, 142, 209, 1),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: half80Screen,
                          height: 180,
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  "Desde:",
                                  style: TextStyle(fontFamily: 'ProximaNova'),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              TextField(
                                // controller: _addressControllerOrigin,
                                onTap: _selectLocationOrigin,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Dirección de inicio',
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.my_location_rounded),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              const Divider(),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  "A:",
                                  style: TextStyle(fontFamily: 'ProximaNova'),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              TextField(
                                // controller: _addressControllerDestino,
                                onTap: _selectLocationOrigin,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Dirección de destino',
                                  // labelStyle: TextStyle(fontWeight: FontWeight.bold),
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.my_location_rounded),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(34, 85, 127, 1),
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.only(
                        top: 20,
                        left: MediaQuery.of(context).size.width * 20 / 100,
                        right: MediaQuery.of(context).size.width * 20 / 100),
                    child: TextButton(
                        onPressed: () => {},
                        child: const Text(
                          "Buscar",
                          style: TextStyle(color: Colors.white),
                        )))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
