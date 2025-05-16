import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('FAQs', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: const [
          FAQItem(
            question: 'How do I add a new device?',
            answer:
                'To add a new device, tap the + button on the home screen. Follow the on-screen instructions to connect your device to your HeatIQ system.',
          ),
          FAQItem(
            question: 'How does temperature control work?',
            answer:
                'HeatIQ uses smart algorithms to learn your preferences and automatically adjust the temperature. You can also manually control the temperature using the device control screen.',
          ),
          FAQItem(
            question: 'What do I do if my device is offline?',
            answer:
                'If your device appears offline, first check if it\'s properly powered. Then verify your WiFi connection. If the issue persists, try removing and re-adding the device.',
          ),
          FAQItem(
            question: 'How can I save energy?',
            answer:
                'HeatIQ automatically optimizes your heating schedule for energy efficiency. You can also set up custom schedules and use the eco mode for additional savings.',
          ),
          FAQItem(
            question: 'How do I update my device firmware?',
            answer:
                'Device firmware updates are handled automatically when available. Make sure your device is connected to WiFi to receive updates.',
          ),
        ],
      ),
    );
  }
}

class FAQItem extends StatefulWidget {
  final String question;
  final String answer;

  const FAQItem({super.key, required this.question, required this.answer});

  @override
  State<FAQItem> createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF2C2C2E),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ExpansionTile(
        title: Text(
          widget.question,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
        onExpansionChanged: (expanded) {
          setState(() {});
        },
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            child: Text(
              widget.answer,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
