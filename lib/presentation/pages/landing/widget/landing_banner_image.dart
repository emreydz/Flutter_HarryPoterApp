import 'package:flutter/material.dart';

class LandingBanner extends StatelessWidget {
  const LandingBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/foto.png",
      height: 600,
      width: 600,
      fit: BoxFit.contain,
    );
  }
}
