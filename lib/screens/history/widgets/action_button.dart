import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

Widget actionButton({required IconData icon, required String text, required VoidCallback onTap}) {
  return Column(
    spacing: 2,
    children: [
      InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            shape: BoxShape.circle,
          ),
          child: Center(child: Icon(icon, color: AppColors.whiteColor)),
        ),
      ),
      Text(text),
    ],
  );
}
