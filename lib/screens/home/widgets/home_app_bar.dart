import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final VoidCallback onProfileTap;
  const HomeAppBar({super.key, required this.onProfileTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, right: 12, left: 12),
      child: Row(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            style: IconButton.styleFrom(padding: EdgeInsets.all(0)),
            onPressed: onProfileTap,
            icon: Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 0.6, color: AppColors.primaryColor),
              ),
              child: Icon(Icons.menu, size: 28),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi! There,",
                style: AppTextStyles.h1.copyWith(fontSize: 26),
              ),
              Text(
                "Where do you want to go?",
                style: AppTextStyles.h5.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
