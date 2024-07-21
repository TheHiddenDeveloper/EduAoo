import 'package:flutter/material.dart';
import 'permissions_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PermissionsScreen()),
      );
    });

    return const Scaffold(
      body: Center(
        child: Text('EduApp', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
