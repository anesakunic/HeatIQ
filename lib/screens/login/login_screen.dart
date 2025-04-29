import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 60),
                Image.asset('assets/logo.png', height: 100),
                const SizedBox(height: 40),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Username'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'Password'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(value: true, onChanged: (_) {}),
                    const Text('Remember me'),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Forgot password'),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, AppRoutes.home);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Log In')),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Or sign in with'),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(icon: Icon(Icons.facebook), onPressed: () {}),
                    IconButton(icon: Icon(Icons.mail), onPressed: () {}),
                    IconButton(icon: Icon(Icons.apple), onPressed: () {}),
                  ],
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.signup);
                  },
                  child: const Text('Don’t have an account? Sign up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
