import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final Color borderColor;
  final IconData? icon;
  final double? borderRadius;
  final double? height;
  final VoidCallback onTap;
  final double? borderWidth;
  final Color? foregroundColor;
  const SecondaryButton({
    super.key,
    required this.text,
    required this.borderColor,
    this.icon,
    this.borderRadius,
    this.height,
    required this.onTap,
    this.borderWidth,
    this.foregroundColor
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          foregroundColor: borderColor,
          side: BorderSide(color: borderColor, width: borderWidth ?? 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(borderRadius ?? 12),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.h5.copyWith(
            color: foregroundColor??borderColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
