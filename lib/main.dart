import 'package:atomhacks_2021/helper/demo_values.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'view/pages/home_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:vibration/vibration.dart';

void main() => runApp(Leaf());

LatLng post_position = LatLng(0.0, 0.0);

class Leaf extends StatelessWidget {
  const Leaf({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(40.87833059490717, -73.89107432441394),
    zoom: 18,
  );

  @override
  Widget build(BuildContext context) {
    Set<Marker> markers = Set.from([]);
    for (int i = 0; i < DemoValues.posts.length; i++) {
      markers.add(DemoValues.posts.elementAt(i).location);
    }
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        myLocationButtonEnabled: true,
        //markers: DemoValues.pins,
        markers: markers,
        onLongPress: (pos) {
          print(pos);
          setState(() {
            markers.add(Marker(
              markerId: MarkerId("98932432"),
              position: pos,
            ));
          });
          Vibration.vibrate();
          post_position = pos;
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToCurrentPosition,
        label: Text('Where am I?'),
        icon: Icon(Icons.pin_drop),
      ),
    );
  }

  Future<void> _goToCurrentPosition() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();

    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(_locationData.latitude, _locationData.longitude),
      zoom: 16,
    )));
  }
}
