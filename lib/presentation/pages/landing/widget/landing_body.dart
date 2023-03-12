import 'package:flutter/material.dart';
import 'package:harry_poter_app/presentation/pages/landing/widget/landing_banner_image.dart';
import 'package:harry_poter_app/presentation/pages/landing/widget/landing_button.dart';

class LandingPageBody extends StatelessWidget {
  const LandingPageBody({
    super.key,
  });

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
 