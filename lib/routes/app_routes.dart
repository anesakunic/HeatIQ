import 'package:flutter/material.dart';
import '../screens/login/login_screen.dart';
import '../screens/signup/signup_screen.dart';
import '../screens/control/control_screen.dart';
import '../screens/settings/settings_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/weather/weather_screen.dart';
import '../screens/main/main_screen.dart';

class AppRoutes {
  static const login = '/';
  static const signup = '/signup';
  static const home = '/home';
  static const control = '/control';
  static const settings = '/settings';
  static const profile = '/profile';
  static const weather = '/weather';

  static final routes = <String, WidgetBuilder>{
    login: (_) => const LoginScreen(),
    signup: (_) => const SignupScreen(),
    home: (_) => const MainScreen(),
    control: (_) => const ControlScreen(),
    settings: (_) => const SettingsScreen(),
    profile: (_) => const ProfileScreen(),
    weather: (_) => const WeatherScreen(),
  };
}

