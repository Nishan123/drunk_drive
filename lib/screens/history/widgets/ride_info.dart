import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

Widget rideInfo({
  required IconData icon,
  required String data,
  required String title,
}) {
  return Row(
    spacing: 12,
    children: [
      Icon(icon, size: 28, color: AppColors.lightBlack),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 0,
        children: [
          Text(title, style: AppTextStyles.normal.copyWith(fontWeight: FontWeight.bold)),
          Text(data),
        ],
      ),
    ],
  );
}
