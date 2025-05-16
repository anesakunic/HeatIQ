import 'package:flutter/material.dart';

class ControlScreen extends StatefulWidget {
  const ControlScreen({super.key});

  @override
  State<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  double _temperature = 28;
  bool isCoolOn = true;
  bool isHeatOn = false;
  bool isFanOn = false;
  bool isAiOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.power_settings_new, color: Colors.pinkAccent),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 16),

              const Center(
                child: Text(
                  'GL V10WIN',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 28),

              _buildTemperatureDial(),

              const SizedBox(height: 32),

              // Mode switches
              _buildModeToggle('Cool', isCoolOn, (val) => setState(() => isCoolOn = val)),
              _buildModeToggle('Heat', isHeatOn, (val) => setState(() => isHeatOn = val)),
              _buildModeToggle('Fan', isFanOn, (val) => setState(() => isFanOn = val)),
              _buildModeToggle('AI', isAiOn, (val) => setState(() => isAiOn = val)),

              const Spacer(),

              _buildBottomBar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTemperatureDial() {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: CircularProgressIndicator(
              value: (_temperature - 16) / (30 - 16),
              strokeWidth: 12,
              backgroundColor: Colors.white12,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.pinkAccent),
            ),
          ),
          Column(
            children: [
              Text(
                '${_temperature.toInt()}°C',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Slider(
                value: _temperature,
                min: 16,
                max: 30,
                divisions: 14,
                activeColor: Colors.pinkAccent,
                inactiveColor: Colors.white24,
                onChanged: (val) {
                  setState(() {
                    _temperature = val;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildModeToggle(String label, bool value, ValueChanged<bool> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.white70, fontSize: 16),
          ),
          const Spacer(),
          Switch(
            value: value,
            activeColor: Colors.pinkAccent,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2E),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.timer, color: Colors.white),
          Text(
            '${_temperature.toInt()}°',
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.white),
        ],
      ),
    );
  }
}
