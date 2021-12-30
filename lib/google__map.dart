//
//
//
//
//
// import 'package:assign/location_service.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class GoogleMaps extends StatefulWidget {
//
//   @override
//   _GoogleMapsState createState() => _GoogleMapsState();
// }
//
// class _GoogleMapsState extends State<GoogleMaps> {
//   final _intialCamera =CameraPosition(
//       target: LatLng( 32.166351,74.195900),
//     zoom: 11.5
//   );
//
//   static final Marker markerOrigin = Marker(
//       markerId: MarkerId('origin'),
//     infoWindow: InfoWindow(title: 'origin'),
//     position: LatLng( 31.582045,74.329376),
//     icon: BitmapDescriptor.defaultMarker,
//   );
//   static final Marker finalOrigin = Marker(
//     markerId: MarkerId('finalorigin'),
//     infoWindow: InfoWindow(title: 'finalorigin'),
//     position: LatLng( 31.582335,74.322336),
//     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
//   );
//    GoogleMapController? _googleMapController;
//   TextEditingController _controller = TextEditingController();
//   var userData =[];
//   @override
//   void dispose(){
//     _googleMapController!.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body:  Container(
//           child: Column(
//             children: [
//               SizedBox(height: 10,),
//               Row(
//                 children: [
//                   Expanded(
//                     child: TextFormField(controller: _controller,
//                     textCapitalization: TextCapitalization.words,
//                     decoration: InputDecoration(
//                       hintText: "search"
//                     ),
//                       onChanged: (value){
//                       print(value);
//                       },
//                     ),
//                   ),
//                  IconButton(onPressed: (){
//                    LocationService().getPlaceId(_controller.text);
//                  },
//                      icon: Icon(Icons.search))
//                 ],
//               ),
//               Expanded(
//                 child: GoogleMap(
//                   markers: {
//                     // markerOrigin,
//                     // finalOrigin,
//                   },
//                   initialCameraPosition: _intialCamera,
//                   zoomControlsEnabled: true,
//                   myLocationButtonEnabled: true,
//                   myLocationEnabled: false,
//                 ),
//               )
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Theme.of(context).primaryColor,
//           foregroundColor: Colors.green,
//           onPressed: ()=> _googleMapController!.animateCamera(
//             CameraUpdate.newCameraPosition(_intialCamera),
//           ),
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
