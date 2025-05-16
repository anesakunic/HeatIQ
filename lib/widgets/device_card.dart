import 'package:flutter/material.dart';

class DeviceCard extends StatelessWidget {
  final String name;
  final IconData icon;
  final bool isActive;
  final VoidCallback onTap;

  const DeviceCard({
    super.key,
    required this.name,
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: isActive ? Theme.of(context).colorScheme.primary.withOpacity(0.1) : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 36, color: isActive ? Theme.of(context).colorScheme.primary : Colors.grey),
              const SizedBox(height: 8),
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
