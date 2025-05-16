import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mockk podaci:
    final devices = [
      {
        'id': '4712kjdskd...',
        'status': 'Active - running',
        'isConnected': true,
      },
      {
        'id': '3Tq2tjkdz...',
        'status': 'Inactive - not running',
        'isConnected': false,
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: devices.length,
        itemBuilder: (context, index) {
          final device = devices[index];
          return _buildDeviceCard(device, context);
        },
      ),
    );
  }

  Widget _buildDeviceCard(Map<String, dynamic> device, BuildContext context) {
    bool isConnected = device['isConnected'] ?? false;

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2E),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.devices, color: Colors.pinkAccent),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Device ID: ${device['id']}',
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              IconButton(
                icon: Icon(
                  isConnected ? Icons.notifications_active : Icons.notifications_off,
                  color: Colors.white70,
                ),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Status: ${device['status']}',
            style: TextStyle(
              color: isConnected ? Colors.greenAccent : Colors.redAccent,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Auto connect',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
              Switch(
                value: isConnected,
                activeColor: Colors.pinkAccent,
                onChanged: (val) {
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                // Mockkk: 
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Disconnect pressed')),
                );
              },
              child: const Text('Disconnect'),
            ),
          ),
        ],
      ),
    );
  }
}
