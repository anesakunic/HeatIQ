import 'package:flutter/material.dart';

class AddDeviceScreen extends StatelessWidget {
  const AddDeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Add Device', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Available Devices',
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.055,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView(
                // add api for available devices 
                children: [
                  _buildDeviceOption(
                    context,
                    'Smart Thermostat',
                    'Control your home temperature intelligently',
                    Icons.thermostat,
                  ),
                  _buildDeviceOption(
                    context,
                    'Room Sensor',
                    'Monitor temperature in specific rooms',
                    Icons.sensor_door,
                  ),
                  _buildDeviceOption(
                    context,
                    'Smart Radiator Valve',
                    'Individual radiator control',
                    Icons.settings_input_component,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDeviceOption(
    BuildContext context,
    String title,
    String description,
    IconData icon,
  ) {
    final size = MediaQuery.of(context).size;

    return Card(
      color: const Color(0xFF2C2C2E),
      margin: EdgeInsets.only(bottom: size.height * 0.02),
      child: ListTile(
        contentPadding: EdgeInsets.all(size.width * 0.04),
        leading: Container(
          padding: EdgeInsets.all(size.width * 0.03),
          decoration: BoxDecoration(
            color: const Color(0xFF3C3C3E),
            borderRadius: BorderRadius.circular(size.width * 0.03),
          ),
          child: Icon(icon, color: Colors.white, size: size.width * 0.06),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: size.width * 0.04,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: size.height * 0.01),
          child: Text(
            description,
            style: TextStyle(color: Colors.grey, fontSize: size.width * 0.035),
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: size.width * 0.04,
        ),
        onTap: () async {
          // backend:implementing device setup
          // 1. Call API to start device pairing process
          // 2. Connect to device via BLE/WiFi
          // 3. Send device configuration to backend
          // 4. Register device to user's account
          // 5. Handle connection errors and retry logic
        },
      ),
    );
  }
}
