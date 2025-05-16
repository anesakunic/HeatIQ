import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../routes/app_routes.dart';
import 'about_screen.dart';
import 'faq_screen.dart';

// requiredd apis on backend:
// 1. POST /api/auth/logout - Clear server-side session
// 2. GET /api/user/profile - Fetch user profile data
// 3. PATCH /api/user/profile - Update user profile

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF2C2C2E),
          title: const Text('Logout', style: TextStyle(color: Colors.white)),
          content: const Text(
            'Are you sure you want to logout?',
            style: TextStyle(color: Colors.white70),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel', style: TextStyle(color: Colors.grey)),
            ),
            TextButton(
              onPressed: () async {
                // implementing logout on backend:
                // 1. Clear user session/token
                // 2. Clear any cached user data
                // 3. Call logout API endpoint if needed
                // 4. Handle any errors during logout

                Navigator.pop(context);
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.login,
                  (route) => false,
                );
              },
              child: const Text(
                'Yes',
                style: TextStyle(color: Colors.pinkAccent),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.06,
            vertical: size.height * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(size.width * 0.015),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFFE03B8B), Color(0xFF7C4DFF)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: CircleAvatar(
                  radius: size.width * 0.1, 
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    size: size.width * 0.1,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                'Alem',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.05, 
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.005),
              Text(
                'alemojlovis@gmail.com',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: size.width * 0.035,
                ),
              ),
              SizedBox(height: size.height * 0.04),

              Expanded(
                child: ListView(
                  children: [
                    _buildOption(
                      Icons.info_outline,
                      'About',
                      onTap:
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AboutScreen(),
                            ),
                          ),
                    ),
                    _buildOption(
                      CupertinoIcons.question_circle,
                      'FAQs',
                      onTap:
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FAQScreen(),
                            ),
                          ),
                    ),
                    const Divider(
                      color: Color(0xFF2C2C2E),
                      thickness: 1,
                      height: 32,
                    ),
                    _buildOption(
                      Icons.logout,
                      'Log Out',
                      onTap: () => _showLogoutDialog(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOption(IconData icon, String title, {VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
