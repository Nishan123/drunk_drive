import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

Widget whereToButton({
  required Color backgroundColor,
  Color? foregroundColor,
  double? height,
  required VoidCallback onTap,
  double? borderRadius,
  required String text,
}) {
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
      child: Row(
        children: [
          Text(
            text,
            style: AppTextStyles.h5.copyWith(
              color: foregroundColor ?? AppColors.whiteColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_rounded,
            color: foregroundColor ?? AppColors.whiteColor,
            size: 28,
          ),
        ],
      ),
    ),
  );
}
