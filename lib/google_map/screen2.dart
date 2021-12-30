// import 'package:flutter/material.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class screen2 extends StatefulWidget{
//   @override
//   _screen2State createState() => _screen2State();
// }
//
// class _screen2State extends State<screen2> {
//   PolylinePoints polylinePoints = PolylinePoints();
//   String googleAPiKey = "AIzaSyB6p9zZeNoksxDUhdFxp1YbGj88mO-eeuw";
//   Map<PolylineId, Polyline> polylines = {};
//   GoogleMapController? mapController; //contrller for Google map
//   final Set<Marker> markers = new Set(); //markers for google map
//   static const LatLng showLocation = const LatLng(27.7089427, 85.3086209); //location to show in map
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: Text("Multiple Markers in Google Map"),
//         backgroundColor: Colors.deepOrangeAccent,
//       ),
//       body: GoogleMap( //Map widget from google_maps_flutter package
//         zoomGesturesEnabled: true, //enable Zoom in, out on map
//         initialCameraPosition: CameraPosition( //innital position in map
//           target: showLocation, //initial position
//           zoom: 15.0, //initial zoom level
//         ),
//         markers: getmarkers(), //markers to show on map
//         mapType: MapType.normal, //map type
//         onMapCreated: (controller) { //method called when map is created
//           setState(() {
//             mapController = controller;
//           });
//         },
//       ),
//     );
//   }
//
//   Set<Marker> getmarkers() { //markers to place on map
//     setState(() {
//       markers.add(Marker( //add first marker
//         markerId: MarkerId(showLocation.toString()),
//         position: showLocation, //position of marker
//         infoWindow: InfoWindow( //popup info
//           title: 'Marker Title First ',
//           snippet: 'My Custom Subtitle',
//         ),
//         icon: BitmapDescriptor.defaultMarker, //Icon for Marker
//       ));
//
//       markers.add(Marker( //add second marker
//         markerId: MarkerId(showLocation.toString()),
//         position: LatLng(27.7099116, 85.3132343), //position of marker
//         infoWindow: InfoWindow( //popup info
//           title: 'Marker Title Second ',
//           snippet: 'My Custom Subtitle',
//         ),
//         icon: BitmapDescriptor.defaultMarker, //Icon for Marker
//       ));
//
//       markers.add(Marker( //add third marker
//         markerId: MarkerId(showLocation.toString()),
//         position: LatLng(27.7137735, 85.315626), //position of marker
//         infoWindow: InfoWindow( //popup info
//           title: 'Marker Title Third ',
//           snippet: 'My Custom Subtitle',
//         ),
//         icon: BitmapDescriptor.defaultMarker, //Icon for Marker
//       ));
//
//       //add more markers here
//     });
//
//     return markers;
//   }
// }