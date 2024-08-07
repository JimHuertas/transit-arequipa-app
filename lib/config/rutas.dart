import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final List<Map<String, dynamic>> routesColor = [
  {'color': Colors.red, 'detail': 'Detalle de Ruta 1'},
  {'color': Colors.green, 'detail': 'Detalle de Ruta 2'},
  {'color': Colors.blue, 'detail': 'Detalle de Ruta 3'},
  {'color': Colors.orange, 'detail': 'Detalle de Ruta 4'},
  {'color': Colors.purple, 'detail': 'Detalle de Ruta 5'},
  {'color': Colors.indigo, 'detail': 'Detalle de Ruta 6'},
];

final rutaCotumAida = <String, dynamic>{
  "startLocation":  const LatLng(-16.342614, -71.581373),
  "endLocation": const LatLng(-16.422332, -71.544095),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.422332, -71.544095"), //Vía de evitamiento
    PolylineWayPoint(location: "-16.343237, -71.577557"), //Mercado de la parada
    PolylineWayPoint(location: "-16.346264, -71.574703"), //Puente Bolognesi
    // PolylineWayPoint(location: "-16.422332, -71.544095"), //
    // PolylineWayPoint(location: "-16.422332, -71.544095"), //
    // PolylineWayPoint(location: "-16.422332, -71.544095"), //
    // PolylineWayPoint(location: "-16.422332, -71.544095"), //
    // PolylineWayPoint(location: "-16.422332, -71.544095"), //
    // PolylineWayPoint(location: "-16.422332, -71.544095"), //
    
  ]
};
