



import 'package:assign/google_map/Directions_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'directon_repository.dart';

class ScreenGoogle1 extends StatefulWidget {
  @override
  _ScreenGoogle1State createState() => _ScreenGoogle1State();
}

class _ScreenGoogle1State extends State<ScreenGoogle1> {
  static const _initialCamera = CameraPosition(
      target: LatLng(32.166351, 74.195900),
      zoom: 12.0
  );
  late GoogleMapController _controller;
  Marker? _origin;
  Marker? _destination;
  Directions? _info;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if(_origin != null)
          TextButton(onPressed: ()=> _controller.animateCamera(
              CameraUpdate.newCameraPosition(CameraPosition(
                target: _origin!.position,
                zoom: 14.5,
                tilt: 50.0
              ))), child: Text('Origin'.toUpperCase(), style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700
          ),)),
          if(_destination !=null)
            TextButton(onPressed: ()=> _controller.animateCamera(
              CameraUpdate.newCameraPosition(CameraPosition(
                  target: _destination!.position,
                zoom: 14.5,
                tilt: 50.5
              ))
            ), child: Text('Destination'.toUpperCase(), style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700
            ),)),
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          GoogleMap(
            initialCameraPosition: _initialCamera,
            zoomControlsEnabled: true,
            onMapCreated: (controller)=>_controller=controller,
            markers: {
              if(_origin != null) _origin!,
              if(_destination != null) _destination!,
            },
            onLongPress: _addMarker,
            polylines: {
              if(_info !=null)
                Polyline(polylineId: PolylineId('overview_polyline'),
                  color: Colors.red,
                  width: 5,
                  points: _info!.polylinePoints.map((e) => LatLng(e.latitude, e.longitude)).toList()
                ),
            },
          ),
          if(_info !=null)
            Positioned(
              top: 20.0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12.0),
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0,2),
                        blurRadius: 6
                      )
                    ]
                  ),
                  child: Text("${_info!.totalDistance} ${_info!.totalDistance}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0
                  ),),
                ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        onPressed: ()=> _controller.animateCamera(
          _info != null ? CameraUpdate.newLatLngBounds(_info!.bounds, 100.0):
              CameraUpdate.newCameraPosition(_initialCamera),
        ),
        child: Icon(Icons.accessibility_new_outlined),

      ),
    );
  }
  void _addMarker(LatLng pos) async{
    if(_origin ==null ||(_origin !=null && _destination !=null)){
      setState(() {
        _origin = Marker(markerId: MarkerId("origin"),
            infoWindow: InfoWindow(title: 'Origin'),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
            position: pos
        );
        _destination = null;
        _info = null;
      });
    }else{
      setState(() {
        _destination = Marker(markerId: MarkerId("destination"),
            infoWindow: InfoWindow(title: 'destination'),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
            position: pos
        );
      });
    }
    //getDirections
    final directions = await DirectionRepository(Dio(null)).getDirection(
        origin: _origin!.position, destination: pos);
    setState(()=> _info= directions);
  }
}
