import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:harry_poter_app/presentation/common_widget.dart/custom_text.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      context.go(context.namedLocation("Characters"));
    });
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/landing.webp",
          height: 300,
          width: 600,
        ),
        const SizedBox(height: 16),
        const AppText(
          title: "Intelligence",
          fontSize: 20,
          titleColor: Color(0xffF2F2F9),
          fontWeight: FontWeight.w600,
        )
      ],
    );
  }
}
