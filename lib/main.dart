import 'package:flutter/material.dart';
import 'config/theme.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const HeatIQApp());
}

class HeatIQApp extends StatelessWidget {
  const HeatIQApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HeatIQ',
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      routes: AppRoutes.routes,
    );
  }
}
