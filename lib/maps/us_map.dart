import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vector_map/vector_map.dart';

class USMap extends StatefulWidget {
  const USMap({Key? key}) : super(key: key);

  @override
  _USMapState createState() => _USMapState();
}

class _USMapState extends State<USMap> {
  late VectorMapController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VectorMapController(mode: VectorMapMode.panAndZoom);
    _loadGeoJson();
  }

  void _loadGeoJson() async {
    String geoJson = await usStates();

    MapDataSource _usStates = await MapDataSource.geoJson(
      geoJson: geoJson,
      keys: ['name'],
      labelKey: 'name',
    );

    MapLayer layer = MapLayer(
      dataSource: _usStates,
      theme: MapValueTheme(
          contourColor: Colors.black,
          key: 'name',
          labelVisibility: (feature) => true,
          labelStyleBuilder: (feature, featureColor, labelColor) {
            return const TextStyle(
              color: Colors.red,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            );
          }),
      highlightTheme: MapHighlightTheme(color: Colors.black),
    );

    _controller.addLayer(layer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VectorMap(
          controller: _controller,
          placeHolder: const Center(child: Text('Loading...'))),
    );
  }

  static Future<String> usStates() {
    return rootBundle.loadString('assets/json/us_states_500k.json');
  }
}
