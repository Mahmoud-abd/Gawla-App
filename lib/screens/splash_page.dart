import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gawla/screens/onboarding_page.dart';
import 'package:gawla/utils/colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const OnBoardingPage()),
              (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: myYellow,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: myYellow,
        ),
      ),
      backgroundColor: myYellow,
      body: Center(
        child: Image.asset(
          'assets/images/splash_img.png',
          errorBuilder: (context, error, stackTrace) => Container(),
        ),
      ),
    );
  }
}
