import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class PointToLatLngPage extends StatefulWidget {
  static const String route = 'point_to_latlng';

  const PointToLatLngPage({Key? key}) : super(key: key);

  @override
  PointToLatlngPage createState() {
    return PointToLatlngPage();
  }
}

class PointToLatlngPage extends State<PointToLatLngPage> {
  late final MapController mapController;
  late final StreamSubscription mapEventSubscription;
  final pointSize = 40.0;
  final pointY = 100.0;

  LatLng? latLng;

  @override
  void initState() {
    super.initState();
    mapController = MapController();

    mapEventSubscription = mapController.mapEventStream
        .listen((mapEvent) => onMapEvent(mapEvent, context));

    Future.delayed(Duration.zero, () {
      mapController.onReady.then((_) => _updatePointLatLng(context));
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(9),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 4.2,
        child: Stack(
          children: [
            FlutterMap(
              mapController: mapController,
              options: MapOptions(
                center: LatLng(18.7940321, 98.967259),
                zoom: 16.0,
                minZoom: 3.0,
              ),
              children: [
                TileLayerWidget(
                    options: TileLayerOptions(
                        urlTemplate:
                            'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                        subdomains: ['a', 'b', 'c'])),
                if (latLng != null)
                  MarkerLayerWidget(options: MarkerLayerOptions())
              ],
            ),
            Text(
              'flutter logo (${latLng?.latitude.toStringAsPrecision(6)},${latLng?.longitude.toStringAsPrecision(6)})',
              textAlign: TextAlign.center,
            ),
            Center(
                child:
                    Icon(Icons.location_on, color: Colors.red, size: pointSize))
          ],
        ),
      ),
    );
  }

  void onMapEvent(MapEvent mapEvent, BuildContext context) {
    _updatePointLatLng(context);
  }

  void _updatePointLatLng(context) {
    final pointX = _getPointX(context);

    final latLng = mapController.pointToLatLng(CustomPoint(pointX, pointY));

    setState(() {
      this.latLng = latLng;
    });
  }

  double _getPointX(BuildContext context) {
    return MediaQuery.of(context).size.width / 2;
  }

  @override
  void dispose() {
    super.dispose();
    mapEventSubscription.cancel();
  }
}
