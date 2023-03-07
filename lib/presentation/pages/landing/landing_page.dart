import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:harry_poter_app/presentation/common_widget.dart/custom_app_button.dart';
import 'package:harry_poter_app/presentation/common_widget.dart/custom_text.dart';
import 'package:harry_poter_app/presentation/pages/landing/widget/landing_banner_image.dart';
import 'package:harry_poter_app/presentation/pages/landing/widget/landing_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const LandingBanner(),
        const SizedBox(height: 24),
        const LandingButton()
      ],
    );
  }
}
 