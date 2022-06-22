import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latlng;

class fluttermap extends StatefulWidget {
  const fluttermap({Key? key}) : super(key: key);

  @override
  State<fluttermap> createState() => _fluttermapState();
}

class _fluttermapState extends State<fluttermap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: FlutterMap(
        options: MapOptions(
          enableScrollWheel: true,
          center: latlng.LatLng(18.7960948, 99.0188304),
          zoom: 16.0,
        ),
        layers: [
          TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c']),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: latlng.LatLng(18.7960948, 99.0188304),
                builder: (ctx) => Container(
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ],
        nonRotatedChildren: [
          AttributionWidget.defaultWidget(
            source: 'OpenStreetMap contributors',
            onSourceTapped: () {},
          ),
        ],
      ),
    );
  }
}
