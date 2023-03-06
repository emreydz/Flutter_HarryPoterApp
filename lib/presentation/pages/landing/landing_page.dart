import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:harry_poter_app/presentation/common_widget.dart/custom_app_button.dart';
import 'package:harry_poter_app/presentation/common_widget.dart/custom_text.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/foto.png",
          height: 600,
          width: 600,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 24),
        CustomAppButton(
            onPressed: () {
              context.go(context.namedLocation("Characters"));
            },
            height: 56,
            width: 327,
            bordorColor: Colors.black,
            backgroundColor: Colors.yellow.shade800,
            textFontSize: 20,
            padding: const EdgeInsets.all(8),
            borderRadius: BorderRadius.circular(10),
            textFontWeight: FontWeight.w700,
            title: "Get Started",
            textColor: Colors.black)
      ],
    );
  }
}
