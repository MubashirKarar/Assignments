// import 'dart:async';
// import 'package:learnfirebase/firebasesceens/firebase-login.dart';
// import 'package:learnfirebase/old/home.dart'; // Ensure this path is correct
// import 'package:flutter/material.dart';

// class SplashViewV2 extends StatefulWidget {
//   const SplashViewV2({super.key});

//   @override
//   State<SplashViewV2> createState() => _SplashViewState();
// }

// class _SplashViewState extends State<SplashViewV2> {
//   @override
//   void initState() {
//     super.initState();
//     // Automatically navigate to the next screen after 3 seconds
//     Timer(const Duration(seconds: 10), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => LoginView(),
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Colors.blue,
//       //   title: const Text("Splash Screen V2"), // Optional title
//       //   actions: [
//       //     IconButton(
//       //       icon: const Icon(Icons.arrow_forward), // Next icon
//       //       onPressed: () {
//       //         Navigator.pushReplacement(
//       //           context,
//       //           MaterialPageRoute(
//       //             builder: (context) => HomeView(),
//       //           ),
//       //         );
//       //       },
//       //     ),
//       //   ],
//       // ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Center(),
//           // Optionally, you can also add a large image or any other content
//           const Spacer(),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => LoginView(),
//                   ),
//                 );
//               },
//               child: const Text('Next'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
