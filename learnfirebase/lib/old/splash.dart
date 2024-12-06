import 'dart:async';
import 'package:flutter/material.dart';
import 'package:learnfirebase/old/onboardingscreen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // Redirect to the next screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Makes the Stack take the entire screen
        children: [
          // Network Image that covers the whole screen
          Image.network(
            'https://static.vecteezy.com/system/resources/previews/012/697/673/non_2x/medical-health-logo-template-in-flat-design-style-vector.jpg', // Replace with your image URL
            fit: BoxFit.cover, // Cover the full screen
          ),
          // Semi-transparent overlay to ensure text is readable on top of the image
          Container(
            color: Colors.white.withOpacity(
                0.4), // Optional: makes the image darker to improve text readability
          ),
          // Content on top of the image
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
