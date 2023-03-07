import 'package:flutter/material.dart';
import 'package:harry_poter_app/presentation/common_widget.dart/custom_text.dart';

class SchoolCardImage extends StatelessWidget {
  final String img;
  final String title;
  final VoidCallback ontap;
  const SchoolCardImage({
    super.key,
    required this.img,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: ontap,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  img,
                ),
              ),
              color: Colors.amber,
            ),
            width: 200,
            height: 250,
          ),
        ),
        CustomText(
          title: title,
          fontSize: 28,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}
