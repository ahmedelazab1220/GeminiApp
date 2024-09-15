import 'package:flutter/material.dart';
import 'package:geminiapp/Features/splash/presentation/view/widgets/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const routeName = '/splash_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.png',
          scale: 2,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: const SplashBody(),
    );
  }
}
