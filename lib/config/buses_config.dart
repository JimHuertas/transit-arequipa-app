

import 'package:flutter/material.dart';

final List<Map<String, dynamic>> busesList = [
    { 
      'id': "1",
      'image': Image.asset("assets/bus-cayma.png"),
      'title': "C3 TransCayma",
      'rutas': "5 rutas", 
      'menuOptions': const <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'Zamacola',
          child: Text('Zamacola'),
        ),
        PopupMenuItem<String>(
          value: 'Enace',
          child: Text('Enace'),
        ),
        PopupMenuItem<String>(
          value: 'Casimiro',
          child: Text('Casimiro'),
        ),
        PopupMenuItem<String>(
          value: 'Chapi',
          child: Text('Chapi'),
        ),
        PopupMenuItem<String>(
          value: 'Embajada',
          child: Text('Embajada'),
        ),
      ],
    },
    { 
      'id': "2",
      'image': Image.asset("assets/bus-cotum.png"),
      'title': "C11 Cotum",
      'rutas': "3 rutas", 
      'menuOptions': const <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'CotumA',
          child: Text('A'),
        ),
        PopupMenuItem<String>(
          value: 'CotumB',
          child: Text('B'),
        ),
        PopupMenuItem<String>(
          value: 'CotumM',
          child: Text('M'),
        ),
      ],
    },
    { 
      'id': "3",
      'image': Image.asset("assets/bus-socabaya.png"),
      'title': "C9 3 de Octubre",
      'rutas': "3 rutas", 
      'menuOptions': const <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: '3DeOctA',
          child: Text('A'),
        ),
        PopupMenuItem<String>(
          value: '3DeOctB',
          child: Text('B'),
        ),
        PopupMenuItem<String>(
          value: '3DeOctC',
          child: Text('C'),
        ),
      ],
    },
    { 
      'id': "4",
      'image': Image.asset("assets/bus-graficos.png"),
      'title': "C4 Unión AQP", 
      'rutas': "7 rutas", 
      'menuOptions': const <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'Graficos',
          child: Text('Gráficos'),
        ),
        PopupMenuItem<String>(
          value: 'Polanco',
          child: Text('Polanco'),
        ),
        PopupMenuItem<String>(
          value: 'RutaC',
          child: Text('Ruta C'),
        ),
        PopupMenuItem<String>(
          value: 'A15',
          child: Text('A15'),
        ),
        PopupMenuItem<String>(
          value: 'altoselva',
          child: Text('AltoSelva'),
        ),
        PopupMenuItem<String>(
          value: 'RutaD',
          child: Text('Ruta D'),
        ),
        PopupMenuItem<String>(
          value: 'bjuanxxiii',
          child: Text('BJuanXXIII'),
        ),
      ],
    },
];