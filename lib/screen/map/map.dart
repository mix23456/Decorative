// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';

// class Map extends StatefulWidget {
//   const Map({Key? key}) : super(key: key);

//   @override
//   _MapState createState() => _MapState();
// }

// class _MapState extends State<Map> {
//   final LatLng _initialcameraposition = const LatLng(20.5937, 78.9629);
//   GoogleMapController? _controller;
//   final Location _location = Location();

//   void _onMapCreated(GoogleMapController _cntlr) {
//     _controller = _cntlr;
//     _location.onLocationChanged.listen((l) {
//       _controller?.animateCamera(
//         CameraUpdate.newCameraPosition(
//           CameraPosition(target: LatLng(l.latitude!, l.longitude!), zoom: 15),
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Stack(
//           children: [
//             GoogleMap(
//               initialCameraPosition:
//                   CameraPosition(target: _initialcameraposition),
//               mapType: MapType.normal,
//               onMapCreated: _onMapCreated,
//               myLocationEnabled: true,
//               myLocationButtonEnabled: true,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
