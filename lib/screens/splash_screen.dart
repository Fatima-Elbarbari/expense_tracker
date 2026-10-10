import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset('assets/images/logo.svg', width: 80, height: 80),

            const SizedBox(height: 10),

            const Text(
              "SpendWise",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "TRACK. SAVE. THRIVE.",
              style: TextStyle(
                fontSize: 12,
                letterSpacing: 2.0,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
