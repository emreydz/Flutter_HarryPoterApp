import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:harry_poter_app/presentation/common_widget.dart/custom_text.dart';

class CustomAppButton extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final double? titleImageWidth;
  final Widget? titleImage;
  final Color textColor;
  final double textFontSize;
  final FontWeight textFontWeight;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final Color bordorColor;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  const CustomAppButton({
    super.key,
    required this.height,
    required this.width,
    this.padding,
    required this.bordorColor,
    required this.backgroundColor,
    required this.textFontSize,
    required this.textFontWeight,
    required this.title,
    required this.textColor,
    this.titleImage,
    this.titleImageWidth,
    this.borderRadius,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          border: Border.all(color: bordorColor, width: 0.5),
          color: backgroundColor,
          borderRadius: borderRadius,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (titleImage != null) titleImage! else const SizedBox(),
              SizedBox(width: titleImageWidth),
              CustomText(
                title: title,
                fontSize: textFontSize,
                fontWeight: textFontWeight,
                titleColor: textColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
