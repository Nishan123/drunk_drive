import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color? foregroundColor;
  final String text;
  final double? borderRadius;
  final double? height;
  const PrimaryButton({
    super.key,
    required this.onTap,
    required this.backgroundColor,
    this.foregroundColor,
    required this.text,
    this.borderRadius,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height ?? 50,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.h5.copyWith(
            color: foregroundColor ?? AppColors.whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
