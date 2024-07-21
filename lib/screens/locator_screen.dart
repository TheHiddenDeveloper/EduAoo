import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class LocatorScreen extends StatefulWidget {
  const LocatorScreen({super.key});

  @override
  _LocatorScreenState createState() => _LocatorScreenState();
}

class _LocatorScreenState extends State<LocatorScreen> {
  late GoogleMapController _controller;
  final LatLng _currentPosition = const LatLng(37.77483, -122.41942); // Default location (San Francisco)

  @override
  void initState() {
    super.initState();
    _checkLocationPermission();
  }

  void _checkLocationPermission() async {
    var status = await Permission.location.status;
    if (status.isDenied || status.isPermanentlyDenied) {
      await Permission.location.request();
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locator'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _currentPosition,
          zoom: 10,
        ),
        markers: {
          Marker(
            markerId: const MarkerId('currentLocation'),
            position: _currentPosition,
          ),
          // Add more markers here as needed
        },
      ),
    );
  }
}
