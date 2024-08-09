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

// C11 Cotum
// COTUM A

final rutaCotumAIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.3869678,-71.5751033),
  "endLocation": const LatLng(-16.430531, -71.532661),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.389676, -71.574912"), // Reservorio
    PolylineWayPoint(location: "-16.392076, -71.574681"), // Oficina Sunafil
    PolylineWayPoint(location: "-16.397678, -71.575089"), // Grifo Cotum
    PolylineWayPoint(location: "-16.399854, -71.570588"), // Coliseo de Gallos
    PolylineWayPoint(location: "-16.392980, -71.568068"), // Colegio Divino Niño Jesus
    PolylineWayPoint(location: "-16.392808, -71.560268"), // Agente Caja Arequipa
    PolylineWayPoint(location: "-16.392862, -71.557294"), // Promart
    PolylineWayPoint(location: "-16.387147, -71.554585"), // Iglesia Adventista
    PolylineWayPoint(location: "-16.388387, -71.551264"), // Honda Conauto
    PolylineWayPoint(location: "-16.389034, -71.549470"), // Real Plaza
    PolylineWayPoint(location: "-16.390111, -71.546520"), // Mall Plaza Cayma
    PolylineWayPoint(location: "-16.392689, -71.537268"), // Puente Grau
    PolylineWayPoint(location: "-16.391890, -71.532446"), // Parque Selva Alegre
    PolylineWayPoint(location: "-16.395527, -71.530881"), // Seguro Social
    PolylineWayPoint(location: "-16.399337, -71.521857"), // El Tablon
    PolylineWayPoint(location: "-16.402720, -71.516867"), // Ovalo Mariscal
    PolylineWayPoint(location: "-16.416023, -71.515410"), // Mall Plaza Porongoche
    PolylineWayPoint(location: "-16.418769, -71.516115"), // Ripley
    PolylineWayPoint(location: "-16.425644, -71.514960"), // Reservorio
    PolylineWayPoint(location: "-16.426900, -71.517945"), // Parque Los Ccoritos
    PolylineWayPoint(location: "-16.429082, -71.523512"), // Grifo Monterrey
  ]
};

final rutaCotumARegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.430531, -71.532661),
  "endLocation": const LatLng(-16.3869678,-71.5751033),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.427145, -71.532965"), // Banco de la Nacion
    PolylineWayPoint(location: "-16.425713, -71.533036"), // Ovalo Apacheta
    PolylineWayPoint(location: "-16.425213, -71.533069"), // Avelino
    PolylineWayPoint(location: "-16.415916, -71.533756"), // Hospital Honorio Delgado
    PolylineWayPoint(location: "-16.412713, -71.535085"), // Aula Magna Unsa - Facultad de Medicina
    PolylineWayPoint(location: "-16.407572, -71.538611"), // Ormeño
    PolylineWayPoint(location: "-16.405756, -71.540051"), // Instituto del Sur
    PolylineWayPoint(location: "-16.402446, -71.542801"), // Brittany Instituto de Ingles (No cuadra)
    PolylineWayPoint(location: "-16.397906, -71.545651"), // Universidad Catolica
    PolylineWayPoint(location: "-16.396117, -71.544962"), // Essalud Yanahuara
    PolylineWayPoint(location: "-16.395187, -71.548248"), // Parque del Avion
    PolylineWayPoint(location: "-16.393447, -71.549139"), // Marco Aldany Peluqueria (No cuadra)
    PolylineWayPoint(location: "-16.389822, -71.547616"), // Mall Plaza Cayma - Saga Falabella
    PolylineWayPoint(location: "-16.388937, -71.549433"), // Real Plaza
    PolylineWayPoint(location: "-16.388311, -71.551227"), // Honda Conauto
    PolylineWayPoint(location: "-16.387190, -71.554633"), // Iglesia Adventista
    PolylineWayPoint(location: "-16.392734, -71.556973"), // Promart
    PolylineWayPoint(location: "-16.399954, -71.570583"), // Coliseo de Gallos
    PolylineWayPoint(location: "-16.397646, -71.575081"), // Grifo Cotum
    PolylineWayPoint(location: "-16.392150, -71.574651"), // Oficina Sunafil
    PolylineWayPoint(location: "-16.389751, -71.574879"), // Reservorio
  ]
};

// COTUM B

final rutaCotumBIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.3869678,-71.5751033),
  "endLocation": const LatLng(-16.430152, -71.534423),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.389751, -71.574879"), // Reservorio
    PolylineWayPoint(location: "-16.392150, -71.574651"), // Oficina Sunafil
    PolylineWayPoint(location: "-16.397646, -71.575081"), // Grifo Cotum
    PolylineWayPoint(location: "-16.399954, -71.570583"), // Coliseo de Gallos
    PolylineWayPoint(location: "-16.393314, -71.568186"), // Colegio Divino Niño Jesus
    PolylineWayPoint(location: "-16.392789, -71.560290"), // Agente Caja Arequipa
    PolylineWayPoint(location: "-16.392881, -71.557388"), // Promart
    PolylineWayPoint(location: "-16.387190, -71.554633"), // Iglesia Adventista
    PolylineWayPoint(location: "-16.388311, -71.551227"), // Honda Conauto
    PolylineWayPoint(location: "-16.388937, -71.549433"), // Real Plaza
    PolylineWayPoint(location: "-16.393447, -71.549139"), // Marco Aldany Peluqueria (No cuadra)
    PolylineWayPoint(location: "-16.396117, -71.544962"), // Essalud Yanahuara
    PolylineWayPoint(location: "-16.397783, -71.545652"), // Franco
    PolylineWayPoint(location: "-16.399045, -71.546178"), // Estadio Umacollo
    PolylineWayPoint(location: "-16.403127, -71.547494"), // Parque Libertad de expresion
    PolylineWayPoint(location: "-16.404160, -71.543456"), // Grifo
    PolylineWayPoint(location: "-16.408143, -71.542024"), // UTP
    PolylineWayPoint(location: "-16.407589, -71.538732"), // Ormeño
    PolylineWayPoint(location: "-16.412809, -71.535235"), // Palomar
    PolylineWayPoint(location: "-16.415916, -71.533756"), // Hospital Honorio Delgado
    PolylineWayPoint(location: "-16.425254, -71.533357"), // Avelino
  ]
};


final rutaCotumBRegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.430152, -71.534423),
  "endLocation": const LatLng(-16.3869678,-71.5751033),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.430592, -71.533109"), // Ovalo Apacheta
    PolylineWayPoint(location: "-16.4301074, -71.5291705"), // Honduras
    PolylineWayPoint(location: "-16.429739, -71.526672"), // Presto
    PolylineWayPoint(location: "-16.429258, -71.523793"), // Grifo Monterrey
    PolylineWayPoint(location: "-16.425804, -71.514983"), // Reservorio de Guardia Civil
    PolylineWayPoint(location: "-16.422830, -71.516206"), // Colegio Neptali
    PolylineWayPoint(location: "-16.417346, -71.515702"), // Mall Plaza Porongoche
    PolylineWayPoint(location: "-16.408979, -71.513916"), // Colegio Gran Unidad
    PolylineWayPoint(location: "-16.402432, -71.517051"), // Mariscal-Feria Altiplano
    PolylineWayPoint(location: "-16.399447, -71.521535"), // El Tablon
    PolylineWayPoint(location: "-16.395372, -71.531187"), // Seguro
    PolylineWayPoint(location: "-16.3933615,-71.537287"), // Puente Grau
    PolylineWayPoint(location: "-16.392158, -71.540537"), // Clinica Arequipa
    PolylineWayPoint(location: "-16.391163, -71.543196"), // Comisaria de Yanahuara
    PolylineWayPoint(location: "-16.390677, -71.544535"), // Metro Ejercito
    PolylineWayPoint(location: "-16.390082, -71.546276"), // Mall Plaza Cayma
    PolylineWayPoint(location: "-16.388940, -71.549430"), // Real Plaza
    PolylineWayPoint(location: "-16.389195, -71.553500"), // Colegio Estado de Suecia
    PolylineWayPoint(location: "-16.392733, -71.556958"), // Promart
    PolylineWayPoint(location: "-16.392053, -71.564287"), // Innova Schools
    PolylineWayPoint(location: "-16.392630, -71.567435"), // Comisaria Mariscal Castilla
    PolylineWayPoint(location: "-16.399956, -71.570584"), // Coliseo de Gallos
    PolylineWayPoint(location: "-16.400264, -71.573895"), // I.E. Jardin Ecologico el Carmen
    PolylineWayPoint(location: "-16.392150, -71.574651"), // Oficina Sunafil
    PolylineWayPoint(location: "-16.389751, -71.574879"), // Reservorio
  ]
};

// COTUM M

final rutaCotumMIda = <String, dynamic>{
  "startLocation":  const LatLng(),
  "endLocation": const LatLng(),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
  ]
};

final rutaCotumMRegreso = <String, dynamic>{
  "startLocation":  const LatLng(),
  "endLocation": const LatLng(),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
    PolylineWayPoint(location: ""), //
  ]
};

//C9 3 de Octubre
// 3DeOctA
final ruta3OctAIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.461696, -71.524342),
  "endLocation": const LatLng(-16.380664, -71.505699),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.460313, -71.521264"), // La Antena
    PolylineWayPoint(location: "-16.455238, -71.516134"), // Parque Cuarto Sector
    PolylineWayPoint(location: "-16.451231, -71.512621"), // LAS ESMERALDAS
    PolylineWayPoint(location: "-16.449883, -71.512468"), // POSTA LAS ESMERALDAS
    PolylineWayPoint(location: "-16.443504, -71.518394"), // MERCADO 3 DE OCTUBRE
    PolylineWayPoint(location: "-16.440828, -71.525511"), // TASAHUAYO
    PolylineWayPoint(location: "-16.440491, -71.529276"), // MERCADO DE SOCABAYA
    PolylineWayPoint(location: "-16.430684, -71.532744"), // OVALO APACHETA
    PolylineWayPoint(location: "-16.425870, -71.533048"), // CENTRO COMERCIAL LA ISLA
    PolylineWayPoint(location: "-16.417167, -71.532693"), // AVENIDA LOS INCAS
    PolylineWayPoint(location: "-16.416130, -71.533512"), // HOSPITAL HONORIO DELGADO ESPINOZA
    PolylineWayPoint(location: "-16.412502, -71.535135"), // EL PALOMAR
    PolylineWayPoint(location: "-16.410882, -71.533378"), // SEDAPAR
    PolylineWayPoint(location: "-16.408858, -71.532866"), // AVENIDA INDEPENDENCIA
    PolylineWayPoint(location: "-16.405674, -71.529034"), // COLISEO AREQUIPA
    PolylineWayPoint(location: "-16.400689, -71.522938"), // COLEGIO DE INGENIEROS
    PolylineWayPoint(location: "-16.403157, -71.518250"), // LA NEGRITA
    PolylineWayPoint(location: "-16.400894, -71.516345"), // FERIA DEL ALTIPLANO
    PolylineWayPoint(location: "-16.398056, -71.516359"), // CUARTEL SALAVERRY
    PolylineWayPoint(location: "-16.395716, -71.519552"), // AV. PUENTE ARNAO
    PolylineWayPoint(location: "-16.390887, -71.513031"), // COMPAÑIA DE BOMBERO 187 MIRAFLORES
    PolylineWayPoint(location: "-16.388918, -71.512010"), // CASINO MILITAR
    PolylineWayPoint(location: "-16.386817, -71.513204"), // AV. GOYONECHE
    PolylineWayPoint(location: "-16.383891, -71.509998"), // OVALO RICARDO PALMA
    PolylineWayPoint(location: "-16.381267, -71.505474"), // UPIS JUAN XXIII
  ]
};

final ruta3OctARegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.380664, -71.505699),
  "endLocation": const LatLng(-16.461696, -71.524342),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.380823, -71.508677"), // PISCINA TEMPERADA MIRAFLORES
    PolylineWayPoint(location: "-16.381656, -71.513500"), // MALECON IQUIQUE
    PolylineWayPoint(location: "-16.381181, -71.515354"), // AV. AREQUIPA
    PolylineWayPoint(location: "-16.385951, -71.519918"), // PUENTE AMISTAD
    PolylineWayPoint(location: "-16.387988, -71.520481"), // LAS PALMERAS
    PolylineWayPoint(location: "-16.394181, -71.525650"), // PARQUE SAN ANTONIO
    PolylineWayPoint(location: "-16.393417, -71.529242"), // EL FILTRO
    PolylineWayPoint(location: "-16.393494, -71.530603"), // SEGURO SOCIAL
    PolylineWayPoint(location: "-16.396492, -71.528259"), // COLEGIO SALESIANO 
    PolylineWayPoint(location: "-16.398153, -71.526914"), // CANAL 2
    PolylineWayPoint(location: "-16.402897, -71.525730"), // AVENIDA INDEPENDENCIA
    PolylineWayPoint(location: "-16.410051, -71.534434"), // ESTADIO MARIANO MELGAR
    PolylineWayPoint(location: "-16.412531, -71.535337"), // OVALO PALOMAR
    PolylineWayPoint(location: "-16.415696, -71.533987"), // HOSPITAL GENERAL HONORIO DELGADO ESPINOZA
    PolylineWayPoint(location: "-16.424982, -71.533258"), // MERCADO ANDRES AVELINO CACERES
    PolylineWayPoint(location: "-16.430359, -71.534169"), // CEMENTERIO APACHETA
    PolylineWayPoint(location: "-16.430667, -71.532990"), // OVALO APACHETA
    PolylineWayPoint(location: "-16.436987, -71.530685"), // PLAZA DE LA POESIA
    PolylineWayPoint(location: "-16.440833, -71.525527"), // TASAHUAYO
    PolylineWayPoint(location: "-16.443529, -71.518370"), // MERCADO 3 DE OCTUBRE
    PolylineWayPoint(location: "-16.449921, -71.512383"), // PUESTO DE SALUD LAS ESMERALDAS
    PolylineWayPoint(location: "-16.460485, -71.521474"), // LA ANTENA
    PolylineWayPoint(location: "-16.460278, -71.521846"), // CALLE PETUNIAS
    PolylineWayPoint(location: "-16.461058, -71.523719"), // PARQUE MI VECINO TOTORO
  ]
};

// 3DeOctB
final ruta3OctBIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.461707, -71.524378),
  "endLocation": const LatLng(-16.389793, -71.547601),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.460491, -71.521604"), // LA ANTENA
    PolylineWayPoint(location: "-16.455259, -71.517687"), // LA CAMPIÑA
    PolylineWayPoint(location: "-16.443511, -71.518397"), // MERCADO 3 DE OCTUBRE
    PolylineWayPoint(location: "-16.440828, -71.525516"), // TASAHUAYO
    PolylineWayPoint(location: "-16.440491, -71.529276"), // MERCADO DE SOCABAYA
    PolylineWayPoint(location: "-16.430658, -71.532735"), // OVALO APACHETA
    PolylineWayPoint(location: "-16.425860, -71.533046"), // CENTRO COMERCIAL LA ISLA
    PolylineWayPoint(location: "-16.420603, -71.531379"), // AVENIDA DANIEL ALCIDES CARRION
    PolylineWayPoint(location: "-16.415909, -71.533689"), // HOSPITAL HONORIO DELGADO ESPINOZA
    PolylineWayPoint(location: "-16.410250, -71.536128"), // ESTADIO MARIANO MELGAR
    PolylineWayPoint(location: "-16.406921, -71.539222"), // ORMEÑO
    PolylineWayPoint(location: "-16.404257, -71.542784"), // OVALO VALLECITO
    PolylineWayPoint(location: "-16.404864, -71.546554"), // UNIVERSIDAD CATOLICA SANTA MARIA
    PolylineWayPoint(location: "-16.403764, -71.547733"), // PARQUE LIBERTAD DE EXPRESION
    PolylineWayPoint(location: "-16.398082, -71.545772"), // ESTADIO UMACOLLO
    PolylineWayPoint(location: "-16.396213, -71.545019"), // HOSPITAL YANAHUARA
    PolylineWayPoint(location: "-16.394682, -71.547560"), // CALLE CHULLO
    PolylineWayPoint(location: "-16.395191, -71.548245"), // PARQUE DEL AVION
    PolylineWayPoint(location: "-16.392770, -71.548995"), // AV. TRINIDAD
    PolylineWayPoint(location: "-16.392096, -71.548671"), // CAPILLA SEÑOR DE LA CAÑA
  ]
};

final ruta3OctBRegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.389793, -71.547601),
  "endLocation": const LatLng(-16.461707, -71.524378),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.392188, -71.540826"), // CALLE LA RECOLETA
    PolylineWayPoint(location: "-16.392613, -71.537427"), // PARADERO PUENTE GRAU
    PolylineWayPoint(location: "-16.391741, -71.530710"), // CALLE PERAL
    PolylineWayPoint(location: "-16.393460, -71.530599"), // SEGURO SOCIAL ESSALUD
    PolylineWayPoint(location: "-16.393415, -71.529251"), // EL FILTRO
    PolylineWayPoint(location: "-16.391962, -71.524436"), // AV. PROGRESO
    PolylineWayPoint(location: "-16.390310, -71.522569"), // MERCADO LA CHAVELA
    PolylineWayPoint(location: "-16.387393, -71.515743"), // AV. TARAPACA
    PolylineWayPoint(location: "-16.385985, -71.514395"), // COOPERATIVA 14
    PolylineWayPoint(location: "-16.383699, -71.514258"), // MERCADO SAN JOSE - MIRAFLORES
    PolylineWayPoint(location: "-16.380908, -71.508551"), // PISCINA TEMPERADA MIRAFLORES
    PolylineWayPoint(location: "-16.387458, -71.512438"), // COLISEO COOPERATIVA 14
    PolylineWayPoint(location: "-16.390781, -71.513191"), // COMPAÑIA DE BOMBEROS 187 MIRAFLORES
    PolylineWayPoint(location: "-16.392041, -71.513902"), // PARADERO LA ALAMEDA SALAVERRY
    PolylineWayPoint(location: "-16.395719, -71.519558"), // AV. PROGRESO
    PolylineWayPoint(location: "-16.399430, -71.521578"), // CANAL 6
    PolylineWayPoint(location: "-16.411134, -71.535704"), // AV. DANIEL ALCIDES CARRION
    PolylineWayPoint(location: "-16.412637, -71.535320"), // OVALO EL PALOMAR
    PolylineWayPoint(location: "-16.424724, -71.533167"), // MERCADO ANDRES AVELINO CACERES
    PolylineWayPoint(location: "-16.440282, -71.529481"), // MERCADO DE SOCABAYA
    PolylineWayPoint(location: "-16.440828, -71.525516"), // TASAHUAYO
    PolylineWayPoint(location: "-16.443529, -71.518370"), // MERCADO 3 DE OCTUBRE
    PolylineWayPoint(location: "-16.449921, -71.512383"), // PUESTO DE SALUD LAS ESMERALDAS
    PolylineWayPoint(location: "-16.454653, -71.514203"), // EL MIRADOR
    PolylineWayPoint(location: "-16.460491, -71.521604"), // LA ANTENA
  ]
};

// 3DeOctC
final ruta3OctCIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.461670, -71.524339),
  "endLocation": const LatLng(-16.394160, -71.502977),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.459694, -71.520669"), // Parque la Campiña
    PolylineWayPoint(location: "-16.456439, -71.517458"), // Institucion Educativa La Campiña
    PolylineWayPoint(location: "-16.453479, -71.513259"), // Parque Las Esmeraldas
    PolylineWayPoint(location: "-16.449547, -71.514303"), // Institucion Educativa Juan Pablo II
    PolylineWayPoint(location: "-16.447188, -71.516200"), // Capilla La Breña
    PolylineWayPoint(location: "-16.443529, -71.518370"), // Mercado 3 de Octubre
    PolylineWayPoint(location: "-16.440828, -71.525516"), // UGEL SUR
    PolylineWayPoint(location: "-16.436925, -71.530580"), // Plaza de la Poesia
    PolylineWayPoint(location: "-16.430658, -71.532735"), // Ovalo Apacheta
    PolylineWayPoint(location: "-16.425810, -71.533053"), // Ovalo del Avelino
    PolylineWayPoint(location: "-16.420510, -71.531408"), // La Pampilla
    PolylineWayPoint(location: "-16.415881, -71.533710"), // Hospital General
    PolylineWayPoint(location: "-16.411845, -71.534596"), // UNSA Biomedicas
    PolylineWayPoint(location: "-16.408270, -71.532211"), // Colegio Independencia
    PolylineWayPoint(location: "-16.405620, -71.528974"), // Coliseo Arequipa
    PolylineWayPoint(location: "-16.404385, -71.527482"), // Paucarpata
    PolylineWayPoint(location: "-16.402437, -71.525096"), // UNSA
    PolylineWayPoint(location: "-16.399532, -71.521651"), // Av. Mariscal Castilla
    PolylineWayPoint(location: "-16.403740, -71.519253"), // Av. Venezuela
    PolylineWayPoint(location: "-16.400870, -71.516331"), // Feria el Altiplano
    PolylineWayPoint(location: "-16.397958, -71.516506"), // Cuartel Salaverry
    PolylineWayPoint(location: "-16.393813, -71.515153"), // Villa Militar
    PolylineWayPoint(location: "-16.393100, -71.510657"), // Alameda Salaverry
    PolylineWayPoint(location: "-16.396617, -71.508216"), // Capitan Novoa
    PolylineWayPoint(location: "-16.395545, -71.505044"), // C.E. Mariano Bustamante
  ]
};

final ruta3OctCRegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.394216, -71.502991),
  "endLocation": const LatLng(-16.461670, -71.524339),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.395502, -71.505020"), // C.E. Mariano Bustamante
    PolylineWayPoint(location: "-16.396698, -71.508136"), // Capitan Novoa
    PolylineWayPoint(location: "-16.393076, -71.510658"), // Alameda Salaverry
    PolylineWayPoint(location: "-16.390823, -71.518579"), // Iglesia Chapi Chico
    PolylineWayPoint(location: "-16.393673, -71.522752"), // Plaza Mayta Capac
    PolylineWayPoint(location: "-16.397320, -71.525285"), // Manuel Muñoz Najar
    PolylineWayPoint(location: "-16.399794, -71.528900"), // Siglo XX
    PolylineWayPoint(location: "-16.400967, -71.527574"), // Av. Goyoneche
    PolylineWayPoint(location: "-16.402909, -71.525715"), // UNSA
    PolylineWayPoint(location: "-16.404304, -71.527400"), // Paucarpata
    PolylineWayPoint(location: "-16.406046, -71.529543"), // Coliseo Arequipa
    PolylineWayPoint(location: "-16.407944, -71.531852"), // Colegio Independencia
    PolylineWayPoint(location: "-16.411325, -71.534698"), // UNSA Biomedicas
    PolylineWayPoint(location: "-16.415897, -71.533867"), // Hospital General
    PolylineWayPoint(location: "-16.419979, -71.531648"), // La Pampilla
    PolylineWayPoint(location: "-16.424846, -71.533213"), // Ovalo del Avelino
    PolylineWayPoint(location: "-16.430305, -71.534445"), // Cementerio La Apacheta
    PolylineWayPoint(location: "-16.435438, -71.531201"), // Estacion Garcilazo de la Vega
    PolylineWayPoint(location: "-16.441834, -71.529018"), // Estacion de Socabaya
    PolylineWayPoint(location: "-16.440845, -71.525576"), // UGEL SUR
    PolylineWayPoint(location: "-16.443510, -71.518414"), // Mercado 3 de Octubre
    PolylineWayPoint(location: "-16.446879, -71.516351"), // Capilla la Breña
    PolylineWayPoint(location: "-16.449539, -71.514389"), // Institucion Educativa Juan Pablo II
    PolylineWayPoint(location: "-16.452507, -71.512988"), // Parque las Esmeraldas
    PolylineWayPoint(location: "-16.456330, -71.517354"), // Institucion Educativa La Campiña
  ]
};

//C4 Unión AQP
// Graficos SAN LUIS

final rutaGraficosIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.364521, -71.504479),
  "endLocation": const LatLng(-16.405568, -71.540039),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.368161, -71.503698"), // San Luis
    PolylineWayPoint(location: "-16.370441, -71.505129"), // Parque Leones del Misti
    PolylineWayPoint(location: "-16.371286, -71.509912"), // Mercado Apurimac
    PolylineWayPoint(location: "-16.374980, -71.513913"), // Avenida Obrera
    PolylineWayPoint(location: "-16.378241, -71.516585"), // Avenida Mexico
    PolylineWayPoint(location: "-16.380608, -71.519248"), // Calle los Andes
    PolylineWayPoint(location: "-16.383264, -71.524610"), // Ovalo Roosevelt
    PolylineWayPoint(location: "-16.388540, -71.526402"), // 13 de Abril
    PolylineWayPoint(location: "-16.389542, -71.526787"), // Avenida Progreso
    PolylineWayPoint(location: "-16.391630, -71.530692"), // Calle Peral
    PolylineWayPoint(location: "-16.391836, -71.532326"), // Parque Selva Alegre
    PolylineWayPoint(location: "-16.393175, -71.535459"), // San Lazaro
    PolylineWayPoint(location: "-16.393259, -71.537323"), // Puente Grau
    PolylineWayPoint(location: "-16.397428, -71.538863"), // C. San Agustin
    PolylineWayPoint(location: "-16.402003, -71.539946"), // I.E. Vallecito
    PolylineWayPoint(location: "-16.403758, -71.539350"), // 28 Julio
  ]
};

final rutaGraficosRegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.405568, -71.540039),
  "endLocation": const LatLng(-16.364521, -71.504479),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.402410, -71.542737"), // Av. La Marina
    PolylineWayPoint(location: "-16.395931, -71.539816"), // Calle Moral
    PolylineWayPoint(location: "-16.392858, -71.536920"), // Puente Grau
    PolylineWayPoint(location: "-16.393323, -71.535387"), // San Lazaro
    PolylineWayPoint(location: "-16.391900, -71.532431"), // Parque Selva Alegre
    PolylineWayPoint(location: "-16.391709, -71.530655"), // Calle Peral
    PolylineWayPoint(location: "-16.389616, -71.526854"), // Av. Progreso
    PolylineWayPoint(location: "-16.383916, -71.524767"), // Puente Chilina
    PolylineWayPoint(location: "-16.383259, -71.521738"), // Avenida el Sol
    PolylineWayPoint(location: "-16.379423, -71.515820"), // Complejo Deportivo A.S.A.
    PolylineWayPoint(location: "-16.377384, -71.517169"), // Av. Obrera
    PolylineWayPoint(location: "-16.375035, -71.513952"), // Av. Leticia
    PolylineWayPoint(location: "-16.371280, -71.509962"), // Mercado Apurimac
    PolylineWayPoint(location: "-16.370131, -71.508452"), // Cancha de Apurimac
    PolylineWayPoint(location: "-16.370441, -71.505129"), // Parque Leones del Misti
    PolylineWayPoint(location: "-16.368161, -71.503698"), // San Luis
  ]
};

// POLANCO

final rutaPolancoIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.369699, -71.502213),
  "endLocation": const LatLng(-16.405568, -71.540039),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.369677, -71.503817"), // San Luis
    PolylineWayPoint(location: "-16.370441, -71.505129"), // Parque Leones del Misti
    PolylineWayPoint(location: "-16.370131, -71.508452"), // Cancha de Apurimac
    PolylineWayPoint(location: "-16.371286, -71.509912"), // Mercado Apurimac
    PolylineWayPoint(location: "-16.372050, -71.513447"), // Complejo Rolando Jauregui
    PolylineWayPoint(location: "-16.373132, -71.519884"), // Av. Las Torres
    PolylineWayPoint(location: "-16.374443, -71.522242"), // Parroquia Cristo Rey
    PolylineWayPoint(location: "-16.379922, -71.526475"), // Iglesia Guadalupe
    PolylineWayPoint(location: "-16.378316, -71.524051"), // Parque Javier Heraud
    PolylineWayPoint(location: "-16.381973, -71.523884"), // Complejo Deportivo Roosevelt
    PolylineWayPoint(location: "-16.382956, -71.524931"), // Puente Chilina
    PolylineWayPoint(location: "-16.389542, -71.526787"), // Avenida Progreso
    PolylineWayPoint(location: "-16.391630, -71.530692"), // Calle Peral
    PolylineWayPoint(location: "-16.391836, -71.532326"), // Parque Selva Alegre
    PolylineWayPoint(location: "-16.393175, -71.535459"), // San Lazaro
    PolylineWayPoint(location: "-16.393259, -71.537323"), // Puente Grau
    PolylineWayPoint(location: "-16.397428, -71.538863"), // C. San Agustin
    PolylineWayPoint(location: "-16.402003, -71.539946"), // I.E. Vallecito
    PolylineWayPoint(location: "-16.403758, -71.539350"), // 28 Julio
  ]
};

final rutaPolancoRegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.405568, -71.540039),
  "endLocation": const LatLng(-16.369699, -71.502213),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.402410, -71.542737"), // Av. La Marina
    PolylineWayPoint(location: "-16.395931, -71.539816"), // Calle Moral
    PolylineWayPoint(location: "-16.392858, -71.536920"), // Puente Grau
    PolylineWayPoint(location: "-16.393323, -71.535387"), // San Lazaro
    PolylineWayPoint(location: "-16.391900, -71.532431"), // Parque Selva Alegre
    PolylineWayPoint(location: "-16.391709, -71.530655"), // Calle Peral
    PolylineWayPoint(location: "-16.389616, -71.526854"), // Av. Progreso
    PolylineWayPoint(location: "-16.383916, -71.524767"), // Puente Chilina
    PolylineWayPoint(location: "-16.383259, -71.521738"), // Avenida el Sol
    PolylineWayPoint(location: "-16.381973, -71.523884"), // Complejo Deportivo Roosevelt
    PolylineWayPoint(location: "-16.379922, -71.526475"), // Iglesia Guadalupe
    PolylineWayPoint(location: "-16.378316, -71.524051"), // Parque Javier Heraud
    PolylineWayPoint(location: "-16.378427, -71.527780"), // Av. Las Torres
    PolylineWayPoint(location: "-16.374443, -71.522242"), // Parroquia Cristo Rey
    PolylineWayPoint(location: "-16.371462, -71.516657"), // Leticia
    PolylineWayPoint(location: "-16.372074, -71.513520"), // Iglesia San Lorenzo
    PolylineWayPoint(location: "-16.371280, -71.509962"), // Mercado Apurimac
    PolylineWayPoint(location: "-16.370131, -71.508452"), // Cancha de Apurimac
    PolylineWayPoint(location: "-16.370441, -71.505129"), // Parque Leones del Misti
    PolylineWayPoint(location: "-16.369677, -71.503817"), // San Luis
  ]
};

//Ruta C (El Rapido)
final rutaCIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.370032, -71.502523),
  "endLocation": const LatLng(-16.401510, -71.550849),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.368161, -71.503698"), // San Luis
    PolylineWayPoint(location: "-16.368367, -71.507232"), // Parque Tripartito
    PolylineWayPoint(location: "-16.369932, -71.506334"), // Posta Leones del Misti
    PolylineWayPoint(location: "-16.371286, -71.509912"), // Mercado Apurimac
    PolylineWayPoint(location: "-16.374980, -71.513913"), // Av. Obrera
    PolylineWayPoint(location: "-16.378241, -71.516585"), // Av. Mexico
    PolylineWayPoint(location: "-16.379423, -71.515820"), // Complejo Deportivo A.S.A. 
    PolylineWayPoint(location: "-16.382541, -71.522014"), // Av. Sol
    PolylineWayPoint(location: "-16.383264, -71.524610"), // Ovalo Roosevelt
    PolylineWayPoint(location: "-16.388540, -71.526402"), // 13 de Abril
    PolylineWayPoint(location: "-16.389542, -71.526787"), // Av. Progreso
    PolylineWayPoint(location: "-16.393406, -71.529240"), // Municipalidad Provincial de Arequipa
    PolylineWayPoint(location: "-16.3933615,-71.537287"), // Puente Grau
    PolylineWayPoint(location: "-16.392158, -71.540537"), // Clinica Arequipa
    PolylineWayPoint(location: "-16.391163, -71.543196"), // Comisaria de Yanahuara
    PolylineWayPoint(location: "-16.390677, -71.544535"), // Metro Ejercito
    PolylineWayPoint(location: "-16.390082, -71.546276"), // Mall Plaza Cayma
    PolylineWayPoint(location: "-16.388940, -71.549430"), // Real Plaza
    PolylineWayPoint(location: "-16.392032, -71.548789"), // Av. Trinidad Moran
    PolylineWayPoint(location: "-16.395839, -71.548119"), // Parque del Avion
    PolylineWayPoint(location: "-16.397309, -71.547636"), // Ovalo Jose A. Quiñones
  ]
};

final rutaCRegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.401510, -71.550849),
  "endLocation": const LatLng(-16.370032, -71.502523),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.402563, -71.548884"), // Parque Libertad de Expresion
    PolylineWayPoint(location: "-16.404363, -71.543017"), // Ovalo De Vallecito
    PolylineWayPoint(location: "-16.408147, -71.542025"), // Av. Parra
    PolylineWayPoint(location: "-16.407649, -71.538729"), // Ormeño
    PolylineWayPoint(location: "-16.405007, -71.537587"), // La Barraca
    PolylineWayPoint(location: "-16.400957, -71.535962"), // Palacio Viejo
    PolylineWayPoint(location: "-16.398894, -71.535126"), // Sunat
    PolylineWayPoint(location: "-16.394753, -71.533469"), // Calle ayacucho
    PolylineWayPoint(location: "-16.391946, -71.532386"), // Parque Selva Alegre
    PolylineWayPoint(location: "-16.393466, -71.530613"), // EsSalud
    PolylineWayPoint(location: "-16.389610, -71.526798"), // Capilla Señor de Huanca
    PolylineWayPoint(location: "-16.386593, -71.526957"), // Av. Gutenberg
    PolylineWayPoint(location: "-16.383249, -71.521725"), // Av. El Sol
    PolylineWayPoint(location: "-16.381235, -71.518943"), // Centro de Salud A.S.A.
    PolylineWayPoint(location: "-16.379444, -71.515844"), // Complejo Deportivo A.S.A.
    PolylineWayPoint(location: "-16.377375, -71.517171"), // Av. Obrera
    PolylineWayPoint(location: "-16.371280, -71.509962"), // Mercado Apurimac
    PolylineWayPoint(location: "-16.371729, -71.507959"), // Parque Chabuca Granda
    PolylineWayPoint(location: "-16.369856, -71.506373"), // Posta leones del Misti
    PolylineWayPoint(location: "-16.368367, -71.507232"), // Parque Tripartito
    PolylineWayPoint(location: "-16.368161, -71.503698"), // San Luis
  ]
};

// Ruta A15

final rutaA15Ida = <String, dynamic>{
  "startLocation":  const LatLng(-16.376903, -71.498963),
  "endLocation": const LatLng(-16.399807, -71.528914),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.373923, -71.502042"), // Estadio Porvenir
    PolylineWayPoint(location: "-16.374571, -71.504899"), // Plaza Porvenir
    PolylineWayPoint(location: "-16.377436, -71.508672"), // Comisaria Porvenir
    PolylineWayPoint(location: "-16.380240, -71.509525"), // Cristo Obrero
    PolylineWayPoint(location: "-16.382813, -71.511724"), // Posta de Alto Misti
    PolylineWayPoint(location: "-16.385941, -71.514408"), // Cooperativa 14
    PolylineWayPoint(location: "-16.391065, -71.518718"), // Chapi Chico
    PolylineWayPoint(location: "-16.393375, -71.522548"), // Parque Mayta Capac
    PolylineWayPoint(location: "-16.395463, -71.523966"), // Calle Puno
    PolylineWayPoint(location: "-16.397207, -71.525134"), // Manuel Muñoz Najar
    PolylineWayPoint(location: "-16.398281, -71.526771"), // Canal 2
  ]
};

final rutaA15Regreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.399807, -71.528914),
  "endLocation": const LatLng(-16.376903, -71.498963),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.400975, -71.527569"), // Av. Goyoneche
    PolylineWayPoint(location: "-16.399970, -71.526252"), // La Salle
    PolylineWayPoint(location: "-16.398103, -71.523921"), // Av. Mariscal Castilla
    PolylineWayPoint(location: "-16.396668, -71.522162"), // Calle Puno
    PolylineWayPoint(location: "-16.395211, -71.520340"), // Av. Progreso
    PolylineWayPoint(location: "-16.391065, -71.518718"), // Chapi Chico
    PolylineWayPoint(location: "-16.385941, -71.514408"), // Cooperativa 14
    PolylineWayPoint(location: "-16.382813, -71.511724"), // Posta de Alto Misti
    PolylineWayPoint(location: "-16.380240, -71.509525"), // Cristo Obrero
    PolylineWayPoint(location: "-16.377436, -71.508672"), // Comisaria Porvenir
    PolylineWayPoint(location: "-16.374571, -71.504899"), // Plaza Porvenir
    PolylineWayPoint(location: "-16.373923, -71.502042"), // Estadio Porvenir
  ]
};

// Alto Selva Alegre(ASA)

final rutaASAIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.365940, -71.502042),
  "endLocation": const LatLng(-16.405568, -71.540039),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.368161, -71.503698"), // San Luis
    PolylineWayPoint(location: "-16.368367, -71.507232"), // Parque Tripartito
    PolylineWayPoint(location: "-16.369818, -71.510235"), // Los Claveles
    PolylineWayPoint(location: "-16.375000, -71.513935"), // Leticia
    PolylineWayPoint(location: "-16.382341, -71.516980"), // Av. Arequipa
    PolylineWayPoint(location: "-16.385635, -71.521474"), // Policlinico Espiritu Santo
    PolylineWayPoint(location: "-16.389542, -71.526787"), // Avenida Progreso
    PolylineWayPoint(location: "-16.391630, -71.530692"), // Calle Peral
    PolylineWayPoint(location: "-16.391836, -71.532326"), // Parque Selva Alegre
    PolylineWayPoint(location: "-16.393175, -71.535459"), // San Lazaro
    PolylineWayPoint(location: "-16.393259, -71.537323"), // Puente Grau
    PolylineWayPoint(location: "-16.397428, -71.538863"), // C. San Agustin
    PolylineWayPoint(location: "-16.402003, -71.539946"), // I.E. Vallecito
    PolylineWayPoint(location: "-16.403758, -71.539350"), // 28 Julio
  ]
};

final rutaASARegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.405568, -71.540039),
  "endLocation": const LatLng(-16.365940, -71.502042),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.402410, -71.542737"), // Av. La Marina
    PolylineWayPoint(location: "-16.395931, -71.539816"), // Calle Moral
    PolylineWayPoint(location: "-16.392858, -71.536920"), // Puente Grau
    PolylineWayPoint(location: "-16.393323, -71.535387"), // San Lazaro
    PolylineWayPoint(location: "-16.391900, -71.532431"), // Parque Selva Alegre
    PolylineWayPoint(location: "-16.391709, -71.530655"), // Calle Peral
    PolylineWayPoint(location: "-16.389616, -71.526854"), // Av. Progreso
    PolylineWayPoint(location: "-16.386651, -71.522875"), // Av. Arequipa
    PolylineWayPoint(location: "-16.382988, -71.517818"), // Calle los Andes
    PolylineWayPoint(location: "-16.379444, -71.515844"), // Complejo Deportivo A.S.A.
    PolylineWayPoint(location: "-16.376742, -71.514046"), // Av. Huascar
    PolylineWayPoint(location: "-16.375048, -71.513887"), // Leticia
    PolylineWayPoint(location: "-16.369849, -71.510226"), // Cancha Apurimac
    PolylineWayPoint(location: "-16.368378, -71.507202"), // Parque Tripartito
    PolylineWayPoint(location: "-16.368229, -71.503688"), // San Luis
  ]
};

// RUTA D

final rutaDIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.365757, -71.501871),
  "endLocation": const LatLng(-16.418441, -71.550737),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.366857, -71.500214"), // San Luis
    PolylineWayPoint(location: "-16.368367, -71.507232"), // Parque Tripartitos
    PolylineWayPoint(location: "-16.369874, -71.506377"), // Posta Leones del Misti
    PolylineWayPoint(location: "-16.371030, -71.505921"), // ESTADIO LEONES DEL MISTI
    PolylineWayPoint(location: "-16.373578, -71.511566"), // Av. Lima
    PolylineWayPoint(location: "-16.374967, -71.513910"), // Leticia
    PolylineWayPoint(location: "-16.384893, -71.520453"), // Av. Arequipa
    PolylineWayPoint(location: "-16.389583, -71.526829"), // Av. Progreso
    PolylineWayPoint(location: "-16.394203, -71.521577"), // Plaza Mayta Capac
    PolylineWayPoint(location: "-16.399214, -71.519292"), // Sepulveda
    PolylineWayPoint(location: "-16.400847, -71.516493"), // Feria del Altiplano
    PolylineWayPoint(location: "-16.405297, -71.521430"), // UNSA Sociales
    PolylineWayPoint(location: "-16.405808, -71.522359"), // Estadio de la Unsa
    PolylineWayPoint(location: "-16.406528, -71.525135"), // Calle Paucarpata
    PolylineWayPoint(location: "-16.410772, -71.522130"), // Lambramani
    PolylineWayPoint(location: "-16.420762, -71.516590"), // Av. Pizarro
    PolylineWayPoint(location: "-16.425137, -71.524154"), // Ovalo La Cultura
    PolylineWayPoint(location: "-16.425283, -71.532910"), // La Isla
    PolylineWayPoint(location: "-16.424679, -71.537308"), // Avelino
    PolylineWayPoint(location: "-16.422693, -71.543772"), // Terminal Terrestre
    PolylineWayPoint(location: "-16.419981, -71.546578"), // Senati
  ]
};

final rutaDRegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.418441, -71.550737),
  "endLocation": const LatLng(-16.365739, -71.501901),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.421996, -71.544962"), // Terminal Terrestre
    PolylineWayPoint(location: "-16.424544, -71.538221"), // Avelino
    PolylineWayPoint(location: "-16.425757, -71.533049"), // La Isla
    PolylineWayPoint(location: "-16.425504, -71.524873"), // OVALO LA CULTURA
    PolylineWayPoint(location: "-16.425858, -71.515142"), // GUARDIA CIVIL
    PolylineWayPoint(location: "-16.421850, -71.516400"), // AV. PIZARRO
    PolylineWayPoint(location: "-16.411126, -71.521647"), // LAMBRAMANI
    PolylineWayPoint(location: "-16.406109, -71.522247"), // ESTADIO DE LA UNSA
    PolylineWayPoint(location: "-16.405442, -71.521029"), // UNSA SOCIALES
    PolylineWayPoint(location: "-16.400893, -71.516345"), // FERIA DEL ALTIPLANO
    PolylineWayPoint(location: "-16.396753, -71.518306"), // AV. PROGRESO
    PolylineWayPoint(location: "-16.394353, -71.521376"), // PLAZA MAYTA CAPAC
    PolylineWayPoint(location: "-16.389724, -71.526659"), // PARQUE DEL OBRERO
    PolylineWayPoint(location: "-16.388464, -71.526411"), // 13 DE ABRIL
    PolylineWayPoint(location: "-16.385470, -71.521218"), // CENTRO DE SALUD ESPIRITU SANTO
    PolylineWayPoint(location: "-16.379405, -71.515802"), // PARQUE TEMATICO DEL DEPORTE
    PolylineWayPoint(location: "-16.375046, -71.513968"), // LETICIA
    PolylineWayPoint(location: "-16.371314, -71.510008"), // MERCADO APURIMAC
    PolylineWayPoint(location: "-16.370809, -71.505617"), // ESTADIO DE LEONES DEL MISTI
    PolylineWayPoint(location: "-16.368346, -71.506902"), // PARQUE TRIPARTITOS
    PolylineWayPoint(location: "-16.367045, -71.499574"), // SAN LUIS
  ]
};

// Ruta bjuanxxiii

final rutaJuanIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.379718, -71.491736),
  "endLocation": const LatLng(-16.425569, -71.534871),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.378496, -71.493542"), // COMPLEJO DEPORTIVO GALAXIA
    PolylineWayPoint(location: "-16.379298, -71.498561"), // SALON DE USOS MULTIPLES ALTO JUAN XXIII
    PolylineWayPoint(location: "-16.381595, -71.501645"), // COMPLEJO DEPORTIVO MUNAKUYKI
    PolylineWayPoint(location: "-16.380852, -71.508335"), // PISCINA DE LA FAMILIA MIRAFLORINA
    PolylineWayPoint(location: "-16.383166, -71.512072"), // POSTA DE ALTO MISTI - MIRAFLORES
    PolylineWayPoint(location: "-16.387313, -71.515608"), // PARQUE DEL NIÑO
    PolylineWayPoint(location: "-16.391008, -71.518729"), // IGLESIA CHAPI CHICO
    PolylineWayPoint(location: "-16.394231, -71.521451"), // PLAZA MAYTA CAPAC
    PolylineWayPoint(location: "-16.397748, -71.516863"), // CUARTEL SALAVERRY
    PolylineWayPoint(location: "-16.400687, -71.516367"), // FERIA DEL ALTIPLANO
    PolylineWayPoint(location: "-16.405784, -71.522328"), // UNSA
    PolylineWayPoint(location: "-16.408305, -71.527204"), // COLEGIO DE CONTADORES PUBLICOS
    PolylineWayPoint(location: "-16.413357, -71.538240"), // EL PALOMAR
    PolylineWayPoint(location: "-16.414097, -71.542840"), // PARQUE DE LA MADRE
    PolylineWayPoint(location: "-16.417049, -71.540801"), // MANZANITOS
    PolylineWayPoint(location: "-16.420179, -71.538229"), // MERCADO DE LOS INCAS
    PolylineWayPoint(location: "-16.422233, -71.544121"), // TERMINAL TERRESTRE
    PolylineWayPoint(location: "-16.424737, -71.537784"), // AV. VIDAURRAZAGA
  ]
};

final rutaJuanRegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.425569, -71.534871),
  "endLocation": const LatLng(-16.379753, -71.491722),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.425787, -71.533050"), // OVALO DEL AVELINO
    PolylineWayPoint(location: "-16.420659, -71.531370"), // LA PAMPILLA
    PolylineWayPoint(location: "-16.416132, -71.533517"), // HOSPITAL GENERAL
    PolylineWayPoint(location: "-16.412508, -71.535132"), // UNSA BIOMEDICAS
    PolylineWayPoint(location: "-16.408384, -71.527082"), // COLEGIO DE CONTADORES PUBLICOS
    PolylineWayPoint(location: "-16.405874, -71.522288"), // UNSA
    PolylineWayPoint(location: "-16.400914, -71.516362"), // FERIA DEL ALTIPLANO
    PolylineWayPoint(location: "-16.397917, -71.516552"), // CUARTEL SALAVERRY
    PolylineWayPoint(location: "-16.390888, -71.518522"), // IGLESIA CHAPI CHICO
    PolylineWayPoint(location: "-16.387543, -71.515712"), // PARQUE DEL NIÑO
    PolylineWayPoint(location: "-16.383438, -71.512242"), // POSTA DE ALTO MISTI - MIRAFLORES
    PolylineWayPoint(location: "-16.380883, -71.508591"), // PISCINA DE LA FAMILIA MIRAFLORINA
    PolylineWayPoint(location: "-16.381546, -71.501789"), // COMPLEJO DEPORTIVO MUNAKUYKI
    PolylineWayPoint(location: "-16.379294, -71.498546"), // SALON DE USOS MULTIPLES ALTO JUAN XXIII
    PolylineWayPoint(location: "-16.378501, -71.493550"), // COMPLEJO DEPORTIVO LA GALAXIA
  ]
};

//C3 TransCayma
// Zamacola

final rutaZamacolaIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.342748, -71.581375),
  "endLocation": const LatLng(-16.422395, -71.544118),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.352431, -71.569228"), // AV. AVIACION
    PolylineWayPoint(location: "-16.353503, -71.568008"), // CALLE PACHITEA
    PolylineWayPoint(location: "-16.355066, -71.559765"), // MIRADOR DE ZAMACOLA
    PolylineWayPoint(location: "-16.352369, -71.556195"), // CAMPO TOROS EL AZUFRAL
    PolylineWayPoint(location: "-16.352092, -71.551437"), // AV. HUAYNA CAPAC
    PolylineWayPoint(location: "-16.348554, -71.547605"), // AV. AYACUCHO CAYMA
    PolylineWayPoint(location: "-16.344831, -71.541614"), // ESTADIO BOLOGNESI
    PolylineWayPoint(location: "-16.354675, -71.543427"), // AV. RAMON CASTILLA
    PolylineWayPoint(location: "-16.362811, -71.544048"), // ESTADIO LA TOMILLA
    PolylineWayPoint(location: "-16.370714, -71.544565"), // URB. PUERTA EL SOL
    PolylineWayPoint(location: "-16.381294, -71.545285"), // PLAZA DE CAYMA
    PolylineWayPoint(location: "-16.390112, -71.546540"), // MALL PLAZA CAYMA
    PolylineWayPoint(location: "-16.392224, -71.540704"), // LA RECOLETA
    PolylineWayPoint(location: "-16.393476, -71.537448"), // PUENTE GRAU
    PolylineWayPoint(location: "-16.394918, -71.537904"), // CALLE VILLALBA
    PolylineWayPoint(location: "-16.397489, -71.538886"), // SAN AGUSTIN
    PolylineWayPoint(location: "-16.402035, -71.539918"), // 7 ESQUINAS
    PolylineWayPoint(location: "-16.402428, -71.538859"), // LA MERCED
    PolylineWayPoint(location: "-16.405640, -71.540075"), // SALAVERRY
    PolylineWayPoint(location: "-16.407587, -71.538739"), // ORMEÑO
    PolylineWayPoint(location: "-16.408907, -71.539777"), // CALLE QUIROZ
    PolylineWayPoint(location: "-16.410929, -71.539208"), // MANZANITOS
    PolylineWayPoint(location: "-16.413485, -71.538965"), // EL PALOMAR
    PolylineWayPoint(location: "-16.420583, -71.538132"), // LA CACHINA
    PolylineWayPoint(location: "-16.423941, -71.539241"), // SUPER MERCADO MAKRO
  ]
};

final rutaZamacolaRegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.422328, -71.544110),
  "endLocation": const LatLng(-16.342620, -71.581376),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.420909, -71.540264"), // LOS INCAS
    PolylineWayPoint(location: "-16.420218, -71.538111"), // AV. VIDAURRAZAGA
    PolylineWayPoint(location: "-16.416762, -71.540874"), // ESTACION DE BOMBEROS LUIS KAEMENA
    PolylineWayPoint(location: "-16.414636, -71.542279"), // BANCOS
    PolylineWayPoint(location: "-16.413465, -71.538282"), // EL PALOMAR
    PolylineWayPoint(location: "-16.412189, -71.538527"), // PARQUE SIMON BOLIVAR
    PolylineWayPoint(location: "-16.410542, -71.537190"), // CALLE BENITO BONIFAZ
    PolylineWayPoint(location: "-16.408643, -71.539549"), // CALLE QUIROZ
    PolylineWayPoint(location: "-16.405750, -71.540052"), // SALAVERRY
    PolylineWayPoint(location: "-16.398651, -71.541731"), // PLAZA VEA
    PolylineWayPoint(location: "-16.393257, -71.537322"), // PUENTE GRAU
    PolylineWayPoint(location: "-16.392263, -71.540249"), // CLINICA AREQUIPA
    PolylineWayPoint(location: "-16.390006, -71.546465"), // MALL PLAZA CAYMA
    PolylineWayPoint(location: "-16.381547, -71.545330"), // PLAZA DE CAYMA
    PolylineWayPoint(location: "-16.371150, -71.544518"), // VALLE ESCONDIDO
    PolylineWayPoint(location: "-16.363242, -71.544049"), // ESTADIO LA TOMILLA
    PolylineWayPoint(location: "-16.354672, -71.543496"), // CALLE 20 DE ABRIL
    PolylineWayPoint(location: "-16.352240, -71.542218"), // PLAZA BOLOGNESI
    PolylineWayPoint(location: "-16.348142, -71.547271"), // AVENIDA AYACUCHO CAYMA
    PolylineWayPoint(location: "-16.351665, -71.550539"), // CALLE JOSE ABELARDO QUIÑONES
    PolylineWayPoint(location: "-16.353494, -71.551791"), // AV. AVIACION
    PolylineWayPoint(location: "-16.353194, -71.558161"), // PARQUE VICTOR ANDRES BELAUNDE
    PolylineWayPoint(location: "-16.352609, -71.560229"), // MIRADOR DE ZAMACOLA
    PolylineWayPoint(location: "-16.354306, -71.567365"), // PARQUE ZAMACOLA
    PolylineWayPoint(location: "-16.343225, -71.577294"), // MERCADO LA PARADA AREQUIPA
  ]
};

// Enace

final rutaEnaceIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.337678, -71.552139),
  "endLocation": const LatLng(-16.406604, -71.530106),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.333064, -71.547943"), // PARROQUIA TERESA DE CALCUTA
    PolylineWayPoint(location: "-16.333611, -71.538627"), // RADIO AZUL
    PolylineWayPoint(location: "-16.338081, -71.540018"), // CEMENTERIO BOLOGNESI
    PolylineWayPoint(location: "-16.344046, -71.540777"), // ALTO CAYMA
    PolylineWayPoint(location: "-16.358038, -71.544371"), // PLAZA LA TOMILLA
    PolylineWayPoint(location: "-16.363164, -71.544067"), // ESTADIO LA TOMILLA
    PolylineWayPoint(location: "-16.379377, -71.544790"), // PUENTE CHILINA
    PolylineWayPoint(location: "-16.381543, -71.545358"), // MUNICIPALIDAD DE CAYMA
    PolylineWayPoint(location: "-16.390069, -71.546630"), // MALL PLAZA AV. EJERCITO
    PolylineWayPoint(location: "-16.390702, -71.544950"), // METRO
    PolylineWayPoint(location: "-16.392194, -71.540812"), // CALLE RECOLETA
    PolylineWayPoint(location: "-16.392613, -71.537427"), // PARADERO PUENTE GRAU
    PolylineWayPoint(location: "-16.393270, -71.535282"), // SAN LAZARO
    PolylineWayPoint(location: "-16.391889, -71.532474"), // PARQUE SELVA ALEGRE
    PolylineWayPoint(location: "-16.393428, -71.530599"), // ESSALUD SEGURO SOCIAL
    PolylineWayPoint(location: "-16.393412, -71.529110"), // MUNICIPALIDAD PROVINCIAL DE AREQUIPA
    PolylineWayPoint(location: "-16.394607, -71.526017"), // PARQUE SAN ANTONIO
    PolylineWayPoint(location: "-16.396510, -71.522378"), // AVENIDA GOYONECHE
    PolylineWayPoint(location: "-16.397230, -71.521259"), // CALLE PUNO
    PolylineWayPoint(location: "-16.400766, -71.516430"), // FERIA DEL ALTIPLANO
    PolylineWayPoint(location: "-16.403365, -71.518420"), // LA NEGRITA
    PolylineWayPoint(location: "-16.405303, -71.521452"), // UNSA SOCIALES
    PolylineWayPoint(location: "-16.406356, -71.523081"), // UNSA INGENIERIAS
  ]
};

final rutaEnaceRegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.406540, -71.530094),
  "endLocation": const LatLng(-16.337679, -71.552168),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.405730, -71.529107"), // COLISEO AREQUIPA
    PolylineWayPoint(location: "-16.402451, -71.525110"), // UNSA INGENIERIAS
    PolylineWayPoint(location: "-16.400165, -71.526013"), // LA SALLE
    PolylineWayPoint(location: "-16.396650, -71.528112"), // DON BOSCO
    PolylineWayPoint(location: "-16.395421,-71.5336439"), // ESSALUD AREQUIPA
    PolylineWayPoint(location: "-16.394797, -71.533234"), // CALLE JERUSALEN
    PolylineWayPoint(location: "-16.393564, -71.536702"), // CALLE SIMON BOLIVAR
    PolylineWayPoint(location: "-16.391879, -71.541299"), // CALLE MISTI
    PolylineWayPoint(location: "-16.390559, -71.544911"), // METRO YAHANUARA
    PolylineWayPoint(location: "-16.390005, -71.546470"), // MALL PLAZA CAYMA
    PolylineWayPoint(location: "-16.381552, -71.545334"), // PLAZA DE CAYMA
    PolylineWayPoint(location: "-16.363245, -71.544048"), // ESTADIO LA TOMILLA
    PolylineWayPoint(location: "-16.362056, -71.543972"), // PISCINA DE CAYMA
    PolylineWayPoint(location: "-16.352119, -71.542200"), // PLAZA BOLOGNESI
    PolylineWayPoint(location: "-16.344861, -71.541462"), // ESTADIO BOLOGNESI
    PolylineWayPoint(location: "-16.338203, -71.539932"), // CEMENTERIO BOLOGNESI
    PolylineWayPoint(location: "-16.333734, -71.538670"), // RADIO AZUL
    PolylineWayPoint(location: "-16.331552, -71.544090"), // COMISARIA DE DEAN VALVIA
    PolylineWayPoint(location: "-16.333042, -71.547958"), // PARROQUIA TERESA DE CALCUTA
  ]
};


// Casimiro

final rutaCasimiroIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.343278, -71.549209),
  "endLocation": const LatLng(-16.406602, -71.530105),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.348319, -71.552619"), // COLEGIO CASIMIRO CUADROS
    PolylineWayPoint(location: "-16.352278, -71.555043"), // AZUFRAL ZAMACOLA
    PolylineWayPoint(location: "-16.352972, -71.553539"), // AV. AVIACION
    PolylineWayPoint(location: "-16.354491, -71.550104"), // PLAZA BUENOS AIRES
    PolylineWayPoint(location: "-16.348699, -71.547728"), // AV. AYACUCHO BUENOS AIRES
    PolylineWayPoint(location: "-16.344768, -71.542082"), // ESTADIO BOLOGNESI
    PolylineWayPoint(location: "-16.352250, -71.541652"), // PLAZA BOLOGNESI
    PolylineWayPoint(location: "-16.354778, -71.543507"), // AV. RAMON CASTILLA
    PolylineWayPoint(location: "-16.366976, -71.544080"), // AV. CAYMA
    PolylineWayPoint(location: "-16.370629, -71.544570"), // URB. PUERTA DEL SOL
    PolylineWayPoint(location: "-16.379382, -71.544793"), // PUENTE CHILINA
    PolylineWayPoint(location: "-16.381514, -71.545350"), // MUNICIPALIDAD DE CAYMA
    PolylineWayPoint(location: "-16.390069, -71.546630"), // MALL PLAZA CAYMA
    PolylineWayPoint(location: "-16.392202, -71.540772"), // LA RECOLETA
    PolylineWayPoint(location: "-16.392613, -71.537427"), // PARADERO PUENTE GRAU
    PolylineWayPoint(location: "-16.393428, -71.530599"), // ESSALUD SEGURO SOCIAL
    PolylineWayPoint(location: "-16.393412, -71.529110"), // MUNICIPALIDAD PROVINCIAL DE AREQUIPA
    PolylineWayPoint(location: "-16.394607, -71.526017"), // PARQUE SAN ANTONIO
    PolylineWayPoint(location: "-16.397230, -71.521259"), // CALLE PUNO
    PolylineWayPoint(location: "-16.399349, -71.518556"), // TENIENTE RODRIGUEZ
    PolylineWayPoint(location: "-16.400766, -71.516430"), // FERIA DEL ALTIPLANO
    PolylineWayPoint(location: "-16.403365, -71.518420"), // LA NEGRITA
    PolylineWayPoint(location: "-16.405303, -71.521452"), // UNSA SOCIALES
    PolylineWayPoint(location: "-16.406874, -71.523979"), // AV. VENEZUELA
    PolylineWayPoint(location: "-16.408479, -71.528607"), // CALLE SEBASTIAN BARRANCA
  ]
};

final rutaCasimiroRegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.406543, -71.530093),
  "endLocation": const LatLng(-16.343262, -71.549183),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.402451, -71.525110"), // UNSA INGENIERIAS
    PolylineWayPoint(location: "-16.400165, -71.526013"), // LA SALLE
    PolylineWayPoint(location: "-16.396650, -71.528112"), // DON BOSCO
    PolylineWayPoint(location: "-16.395421,-71.5336439"), // ESSALUD AREQUIPA
    PolylineWayPoint(location: "-16.393954, -71.535684"), // CALLE SANTA CATALINA
    PolylineWayPoint(location: "-16.393195, -71.537755"), // PUENTE GRAU
    PolylineWayPoint(location: "-16.392253, -71.540255"), // CLINICA AREQUIPA
    PolylineWayPoint(location: "-16.391154, -71.543241"), // LOS TORITOS DE YANAHURA
    PolylineWayPoint(location: "-16.390535, -71.544979"), // METRO
    PolylineWayPoint(location: "-16.390003, -71.546469"), // MALL PLAZA CAYMA
    PolylineWayPoint(location: "-16.388321, -71.547215"), // PARQUE LAS ORQUIDEAS
    PolylineWayPoint(location: "-16.381566, -71.545333"), // PLAZA CAYMA
    PolylineWayPoint(location: "-16.378078, -71.544676"), // COLEGIO MAYTA CAPAC
    PolylineWayPoint(location: "-16.371150, -71.544518"), // VALLE ESCONDIDO
    PolylineWayPoint(location: "-16.366812, -71.544095"), // CALLE HUASCAR
    PolylineWayPoint(location: "-16.362560, -71.544003"), // ESTADIO LA TOMILLA
    PolylineWayPoint(location: "-16.355494, -71.543549"), // CALLE GALLEGOS
    PolylineWayPoint(location: "-16.354697, -71.543254"), // CALLE 20 DE ABRIL
    PolylineWayPoint(location: "-16.344894, -71.541467"), // ESTADIO BOLOGNESI
    PolylineWayPoint(location: "-16.347739, -71.546925"), // AV. AYACUCHO BUENOS AIRES
    PolylineWayPoint(location: "-16.352281, -71.555026"), // AZUFRAL ZAMACOLA
    PolylineWayPoint(location: "-16.350779, -71.554690"), // PARQUE DEL NIÑO
    PolylineWayPoint(location: "-16.346805, -71.554672"), // PARQUE VILLA CONTINENTAL
    PolylineWayPoint(location: "-16.346843, -71.551557"), // AV. HEROES DEL CENEPA
  ]
};


// Chapi

final rutaChapiIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.326559, -71.540381),
  "endLocation": const LatLng(-16.411114, -71.535677),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.330221, -71.543005"), // DEAN VALDIVIA
    PolylineWayPoint(location: "-16.332538, -71.540188"), // RADIO AZUL
    PolylineWayPoint(location: "-16.335783, -71.542583"), // RAFAEL BELAUNDE
    PolylineWayPoint(location: "-16.340303, -71.545204"), // VIRGEN DE CHAPI
    PolylineWayPoint(location: "-16.344913, -71.540891"), // EL CRUCE BOLOGNESI
    PolylineWayPoint(location: "-16.352026, -71.541616"), // PARQUE BOLOGNESI
    PolylineWayPoint(location: "-16.357939, -71.543730"), // PLAZA LA TOMILLA
    PolylineWayPoint(location: "-16.363164, -71.544067"), // ESTADIO LA TOMILLA
    PolylineWayPoint(location: "-16.367434, -71.544090"), // LA TOMILLA 1
    PolylineWayPoint(location: "-16.377016, -71.544736"), // AUTODEMA
    PolylineWayPoint(location: "-16.381517, -71.545362"), // PLAZA DE CAYMA
    PolylineWayPoint(location: "-16.390082, -71.546609"), // MALL PLAZA CAYMA
    PolylineWayPoint(location: "-16.392186, -71.540828"), // LA RECOLETA
    PolylineWayPoint(location: "-16.395680, -71.539535"), // LA MARINA
    PolylineWayPoint(location: "-16.392659, -71.537335"), // PUENTE GRAU
    PolylineWayPoint(location: "-16.393269, -71.535260"), // SAN LAZARO
    PolylineWayPoint(location: "-16.393489, -71.530598"), // EL FILTRO
    PolylineWayPoint(location: "-16.393417, -71.529110"), // MUNICIPALIDAD DE ARREQUIPA
    PolylineWayPoint(location: "-16.394637, -71.525983"), // PARQUE SAN ANTONIO
    PolylineWayPoint(location: "-16.396215, -71.522805"), // CALLE PUNO
    PolylineWayPoint(location: "-16.398851, -71.521241"), // SEPULVEDA
    PolylineWayPoint(location: "-16.400824, -71.516479"), // FERIA DEL ALTIPLANO
    PolylineWayPoint(location: "-16.405310, -71.521453"), // UNSA SOCIALES
    PolylineWayPoint(location: "-16.406369, -71.523101"), // ESTADIO DE LA UNSA
    PolylineWayPoint(location: "-16.411367, -71.534631"), // SEDAPAR
  ]
};

final rutaChapiRegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.411097, -71.535725),
  "endLocation": const LatLng(-16.326573, -71.540286),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.407162, -71.539000"), // ORMEÑO
    PolylineWayPoint(location: "-16.405812, -71.540011"), // SALAVERRY
    PolylineWayPoint(location: "-16.401894, -71.542775"), // LA MARINA
    PolylineWayPoint(location: "-16.398456, -71.541685"), // PLAZA VEA LA MARINA
    PolylineWayPoint(location: "-16.392684, -71.537289"), // PUENTE GRAU
    PolylineWayPoint(location: "-16.392185, -71.540484"), // LA RECOLETA
    PolylineWayPoint(location: "-16.390021, -71.546459"), // MALL PLAZA CAYMA
    PolylineWayPoint(location: "-16.381490, -71.545315"), // PLAZA DE CAYMA
    PolylineWayPoint(location: "-16.377177, -71.544686"), // AUTODEMA
    PolylineWayPoint(location: "-16.367436, -71.544063"), // LA TOMILLA 1
    PolylineWayPoint(location: "-16.362952, -71.544030"), // ESTADIO LA TOMILLA
    PolylineWayPoint(location: "-16.357842, -71.543699"), // PLAZA LA TOMILLA
    PolylineWayPoint(location: "-16.352058, -71.542227"), // PARQUE BOLOGNESI
    PolylineWayPoint(location: "-16.344847, -71.541483"), // EL CRUCE BOLOGNESI
    PolylineWayPoint(location: "-16.340293, -71.545225"), // VIRGEN DE CHAPI
    PolylineWayPoint(location: "-16.335737, -71.542540"), // RAFAEL BELAUNDE
    PolylineWayPoint(location: "-16.332534, -71.540170"), // RADIO AZUL
    PolylineWayPoint(location: "-16.330171, -71.542918"), // DEAN VALDIVIA
  ]
};


// Embajada

final rutaEmbajadaIda = <String, dynamic>{
  "startLocation":  const LatLng(-16.301780, -71.524410),
  "endLocation": const LatLng(-16.424561, -71.537502),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.304432, -71.525722"), // SENASA
    PolylineWayPoint(location: "-16.310620, -71.526919"), // EMBAJADA DE JAPON
    PolylineWayPoint(location: "-16.316973, -71.528802"), // LA TOMILLA 2
    PolylineWayPoint(location: "-16.320525, -71.530812"), // 11 DE MAYO
    PolylineWayPoint(location: "-16.325296, -71.534004"), // ALTO CAYMA
    PolylineWayPoint(location: "-16.333754, -71.538707"), // RADIO AZUL
    PolylineWayPoint(location: "-16.338085, -71.540016"), // CEMENTERIO BOLOGNESI
    PolylineWayPoint(location: "-16.347681, -71.541161"), // BOLOGNESI CAYMA
    PolylineWayPoint(location: "-16.356127, -71.543610"), // ASEQUIA ALTA
    PolylineWayPoint(location: "-16.358093, -71.543739"), // PLAZA LA TOMILLA
    PolylineWayPoint(location: "-16.363489, -71.544094"), // ESTADIO DE LA TOMILLA
    PolylineWayPoint(location: "-16.376078, -71.544730"), // HOSPITAL POLICIA CIVICA
    PolylineWayPoint(location: "-16.381667, -71.545390"), // PLAZA DE CAYMA
    PolylineWayPoint(location: "-16.390139, -71.546458"), // MALL PLAZA CAYMA
    PolylineWayPoint(location: "-16.392195, -71.540798"), // LA RECOLETA
    PolylineWayPoint(location: "-16.393480, -71.537448"), // PUENTE GRAU
    PolylineWayPoint(location: "-16.398311, -71.539492"), // CRUZ VERDE
    PolylineWayPoint(location: "-16.400390, -71.540528"), // CONSUELO
    PolylineWayPoint(location: "-16.402422, -71.538860"), // LA BARRACA
    PolylineWayPoint(location: "-16.413489, -71.538964"), // EL PALOMAR
    PolylineWayPoint(location: "-16.415812, -71.541731"), // PARQUE INDUSTRIAL
    PolylineWayPoint(location: "-16.420115, -71.538274"), // LOS INCAS
  ]
};

final rutaEmbajadaRegreso = <String, dynamic>{
  "startLocation":  const LatLng(-16.424593, -71.537557),
  "endLocation": const LatLng(-16.301796, -71.524428),
  "wayPoints" : <PolylineWayPoint>[
    PolylineWayPoint(location: "-16.422799, -71.543449"), // TERMINAL TERRESTRE
    PolylineWayPoint(location: "-16.420327, -71.538306"), // LOS INCAS
    PolylineWayPoint(location: "-16.415196, -71.542338"), // BANCOS
    PolylineWayPoint(location: "-16.413477, -71.538351"), // EL PALOMAR
    PolylineWayPoint(location: "-16.405872, -71.539969"), // SALAVERRY
    PolylineWayPoint(location: "-16.400411, -71.542378"), // LA MARINA
    PolylineWayPoint(location: "-16.393184, -71.537290"), // PUENTE GRAU
    PolylineWayPoint(location: "-16.392168, -71.540519"), // LA RECOLETA
    PolylineWayPoint(location: "-16.390599, -71.544819"), // METRO
    PolylineWayPoint(location: "-16.390040, -71.546380"), // MALL PLAZA CAYMA
    PolylineWayPoint(location: "-16.381698, -71.545369"), // PLAZA DE CAYMA
    PolylineWayPoint(location: "-16.376043, -71.544700"), // HOSPITAL DE LA POLICIA CIVIL
    PolylineWayPoint(location: "-16.368118, -71.544304"), // LA TOMILLA 1
    PolylineWayPoint(location: "-16.363449, -71.544066"), // ESTADIO LA TOMILLA
    PolylineWayPoint(location: "-16.358141, -71.543717"), // PLAZA LA TOMILLA
    PolylineWayPoint(location: "-16.352040, -71.542206"), // PARQUE BOLOGNESI
    PolylineWayPoint(location: "-16.344986, -71.541482"), // EL CRUCE BOLOGNESI
    PolylineWayPoint(location: "-16.338081, -71.539919"), // CEMENTERIO BOLOGNESI
    PolylineWayPoint(location: "-16.333773, -71.538690"), // RADIO AZUL
    PolylineWayPoint(location: "-16.325332, -71.534005"), // ALTO CAYMA
    PolylineWayPoint(location: "-16.320537, -71.530795"), // 11 DE MAYO
    PolylineWayPoint(location: "-16.316977, -71.528776"), // LA TOMILLA 2
    PolylineWayPoint(location: "-16.310543, -71.526883"), // EMBAJADA DE JAPON
  ]
};
