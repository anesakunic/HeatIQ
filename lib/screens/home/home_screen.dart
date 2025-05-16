import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import 'add_device_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  // backend-required API endpoints:
  // 1. GET /api/user/devices - List all user's devices
  // 2. GET /api/user/profile - Get user profile info
  // 3. GET /api/devices/{id}/status - Get device status
  // 4. POST /api/devices/{id}/control - Send control commands
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.06,
            vertical: size.height * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  height: size.height * 0.06,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                'Welcome, Alem!',
                style: TextStyle(
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Center(
                child: CustomButton(
                  text: '+',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddDeviceScreen(),
                      ),
                    );
                  },
                  height: size.width * 0.15,
                  width: size.width * 0.15,
                  fontSize: size.width * 0.08,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
