// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:latest_app/signup_screen/signup_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  Future<void> navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const SignupScreen()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(15, 40, 53, 1),
      body: Center(
        child: CommonUseImage(
          Height: 23.59.px,
          Width: 315.px,
        ),
      ),
    );
  }
}

class CommonUseImage extends StatelessWidget {
  CommonUseImage({required this.Height, required this.Width});
  final double Height;
  final double Width;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/Mask group.png',fit: BoxFit.cover,
    height:Height,width:Width,);
  }
}