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

final rutaCotumARegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.430531, -71.532661),
  "endLocation": const LatLng(-16.3869678,-71.5751033),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.427145, -71.532965"), // Banco de la Nacion
    PolylineWayPoint(location: "-16.425713, -71.533036"), // Ovalo Apacheta
    PolylineWayPoint(location: "-16.4247519,-71.5331194"), // Avelino
    PolylineWayPoint(location: "-16.415879, -71.533707"), // Hospital Honorio Delgado
    PolylineWayPoint(location: "-16.412713, -71.535085"), // Aula Magna Unsa - Facultad de Medicina
    PolylineWayPoint(location: "-16.407572, -71.538611"), // Ormeño
    PolylineWayPoint(location: "-16.405756, -71.540051"), // Instituto del Sur
    PolylineWayPoint(location: "-16.402446, -71.542801"), // Brittany InstituTO de Ingles (No cuadra)
    PolylineWayPoint(location: "-16.397906, -71.545651"), // Universidad Catolica
    PolylineWayPoint(location: "-16.396117, -71.544962"), // Hospital Yanahuara
    PolylineWayPoint(location: "-16.395187, -71.548248"), // Parque del Avion
    PolylineWayPoint(location: "-16.393416, -71.549082"), // Marco Aldany Peluqueria (No cuadra)
    PolylineWayPoint(location: "-16.389822, -71.547616"), // Mall Plaza Cayma - Saga Falabella
    PolylineWayPoint(location: "-16.388937, -71.549433"), // Real Plaza
    PolylineWayPoint(location: "-16.388311, -71.551227"), // Honda Conauto
    PolylineWayPoint(location: "-16.387190, -71.554633"), // Iglesia Adventista
    PolylineWayPoint(location: "-16.392734, -71.556973"), // Promart
    PolylineWayPoint(location: "-16.399489, -71.570605"), // Coliseo de Gallos
    PolylineWayPoint(location: "-16.397646, -71.575081"), // Grifo Cotum
    PolylineWayPoint(location: "-16.392150, -71.574651"), // Oficina Sunafil
    PolylineWayPoint(location: "-16.389751, -71.574879"), // Reservorio
    
  ]
};
