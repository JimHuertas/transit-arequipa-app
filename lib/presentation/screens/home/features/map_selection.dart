import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:route_master_app/config/constants.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSelectionScreen extends StatefulWidget {
  const MapSelectionScreen({super.key});

  @override
  State<MapSelectionScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapSelectionScreen> {
  final searchcontroller = TextEditingController();
  final uuid = const Uuid();
  final String token = '1234567890';
  List<dynamic> listOfLocation = [];
  bool selectedSearch = false;

  @override
  void initState() {
    searchcontroller.addListener(() {
      _onChange();
    });
    super.initState();
  }

  _onChange() {
    placeSuggestion(searchcontroller.text);
  }

  void placeSuggestion(String input) async {
    const String apiKey = googleApiKey;
    try {
      String bassedUrl =
          'https://maps.googleapis.com/maps/api/place/autocomplete/json';
      String request =
          "$bassedUrl?input=$input&key=$apiKey&sessiontoken=$token&sessiontoken=$token&components=country:PE";
      final response = await http.get(Uri.parse(request));
      var data = json.decode(response.body);
      if (kDebugMode) {
        print(data["predictions"]);
      }
      if (response.statusCode == 200) {
        setState(() {
          listOfLocation = data['predictions'];
        });
      } else {
        throw Exception("Fail to load");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SELECCIONA LA DIRECCIÓN"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              TextField(
                controller: searchcontroller,
                decoration: const InputDecoration(hintText: "Search place..."),
                onChanged: (value) {
                  selectedSearch = false;
                  setState(() {});
                },
              ),
              Visibility(
                visible: searchcontroller.text.isEmpty || selectedSearch
                    ? false
                    : true,
                child: Expanded(
                    child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listOfLocation.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        searchcontroller.text =
                            listOfLocation[index]["description"];
                        listOfLocation.clear();
                        selectedSearch = true;
                        print(selectedSearch);
                        setState(() {});
                      },
                      child: ListTile(
                          title: Text(listOfLocation[index]["description"])),
                    );
                  },
                )),
              ),
              Visibility(
                visible: searchcontroller.text.isEmpty ? true : false,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.my_location,
                        color: Color.fromRGBO(34, 85, 127, 1),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Mi Ubicación",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromRGBO(34, 85, 127, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: selectedSearch ? true : false,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.check_circle,
                        color: Color.fromRGBO(34, 127, 81, 1),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Confirmar Ubicación",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromRGBO(34, 85, 127, 1),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
