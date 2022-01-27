import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  // final Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = LatLng(13.736717, 100.523186);

  final Set<Marker> _markers = {};

  LatLng _lastMapPosition = _center;

  MapType _currentMapType = MapType.normal;

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  // void _onAddMarkerButtonPressed() {
  //   setState(() {
  //     _markers.add(Marker(
  //       // This marker id can be anything that uniquely identifies each marker.
  //       markerId: MarkerId(_lastMapPosition.toString()),
  //       position: _lastMapPosition,
  //       infoWindow: const InfoWindow(
  //         title: 'Really cool place',
  //         snippet: '5 Star Rating',
  //       ),
  //       icon: BitmapDescriptor.defaultMarker,
  //     ));
  //   });
  // }

  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  void _onMapCreated(GoogleMapController controller) {
    // _controller.complete(controller);
    // userLocation =  Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Text('Map'),
          backgroundColor: Colors.green[700],
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: const CameraPosition(
                target: _center,
                zoom: 15.0,
              ),
              // mapType: _currentMapType,
              // markers: _markers,
              onCameraMove: _onCameraMove,
              myLocationEnabled: true,
              mapType: MapType.normal,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Align(
            //     alignment: Alignment.topRight,
            //     child: Column(
            //       children: <Widget>[
            //         FloatingActionButton(
            //           heroTag: null,
            //           onPressed: _onMapTypeButtonPressed,
            //           materialTapTargetSize: MaterialTapTargetSize.padded,
            //           backgroundColor: Colors.green,
            //           child: const Icon(Icons.map, size: 36.0),
            //         ),
            //         const SizedBox(height: 16.0),
            //         FloatingActionButton(
            //           heroTag: null,
            //           onPressed: _onAddMarkerButtonPressed,
            //           materialTapTargetSize: MaterialTapTargetSize.padded,
            //           backgroundColor: Colors.green,
            //           child: const Icon(Icons.add_location, size: 36.0),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}