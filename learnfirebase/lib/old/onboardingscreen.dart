import 'package:flutter/material.dart';
import 'package:learnfirebase/firebasesceens/firebase-login.dart';

// Import the HomeScreen where you want to navigate

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // To track the current page
  int _currentPage = 0;

  // List of descriptions for each page
  final List<String> _descriptions = [
    "Welcome to the Medical App! Here you can find health tips and more.",
    "Track your daily health metrics and stay informed about your wellness.",
    "Get personalized recommendations to improve your health and lifestyle."
  ];

  // List of network image URLs for each page
  final List<String> _imageUrls = [
    'https://blog.sparksgroupinc.com/hubfs/Top%205%20Best%20Practices%20for%20Effective%20Onboarding.png', // Replace with your actual image URLs
    'data:image/jpeg;base64,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', // Replace with your actual network URL
    'https://th.bing.com/th/id/R.18de972f560cc778d5ede0af6482ac01?rik=jA8jF%2fCO5%2fJlrQ&riu=http%3a%2f%2ftotalgymdirect.com%2ftotal-gym-blog%2fwp-content%2fuploads%2fhealthy-lifestyle-commitment.jpeg&ehk=Z3mWr0eCiRwomGLOsmbZ8ghrsxjONZ%2buP6MECT%2bTFx8%3d&risl=&pid=ImgRaw&r=0',
  ];

  // Method to handle the 'Next' button press
  void _nextPage() {
    if (_currentPage < _descriptions.length - 1) {
      setState(() {
        _currentPage++;
      });
    } else {
      // Navigate to HomeScreen when onboarding is done
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const FirebaseLogin()),
      );
    }
  }

  // Method to handle the 'Skip' button press
  void _skipToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const FirebaseLogin()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the current image
            Image.network(
              _imageUrls[_currentPage],
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 40), // Space between image and description

            // Display the current description
            Text(
              _descriptions[_currentPage],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 40), // Space between description and buttons

            // Row of buttons: "Skip" and "Next"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Skip Button
                TextButton(
                  onPressed: _skipToHome,
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),

                // Next Button
                ElevatedButton(
                  onPressed: _nextPage,
                  child: Text(
                    _currentPage < _descriptions.length - 1
                        ? 'Next'
                        : 'Get Started',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
