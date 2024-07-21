import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../utils/permissions.dart';

class PermissionsScreen extends StatefulWidget {
  const PermissionsScreen({super.key});

  @override
  _PermissionsScreenState createState() => _PermissionsScreenState();
}

class _PermissionsScreenState extends State<PermissionsScreen> {
  @override
  void initState() {
    super.initState();
    _requestPermission();
  }

  void _requestPermission() async {
    bool granted = await Permissions.requestLocationPermission();
    if (granted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else {
      _showPermissionDeniedDialog();
    }
  }

  void _showPermissionDeniedDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Permission Denied"),
          content: const Text("Location permission is required to use this app."),
          actions: <Widget>[
            TextButton(
              child: const Text("Grant Permission"),
              onPressed: () {
                Navigator.of(context).pop();
                _requestPermission();
              },
            ),
            TextButton(
              child: const Text("Exit"),
              onPressed: () {
                Navigator.of(context).pop();
                _exitApp();
              },
            ),
          ],
        );
      },
    );
  }

  void _exitApp() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
