import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/app_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.splashTop, AppColors.primary],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/images/logo.svg',
                      width: 80,
                      height: 80),

                  const SizedBox(height: 10),

                  const Text(
                    AppStrings.appName,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    AppStrings.tagline,
                    style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 2.0,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),


            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 48),
                child: Text(
                  'LOADING...',
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 2.0,
                    color: Colors.white70,
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
