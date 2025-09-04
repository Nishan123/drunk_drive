import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyText extends StatelessWidget {
  const PrivacyPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      softWrap: true,
      textAlign: TextAlign.center,
      text: TextSpan(
        style: AppTextStyles.normal,
        children: [
          TextSpan(text: 'By clicking "Next" you agree to\n'),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),
          ),
          TextSpan(text: ' and '),
          TextSpan(
            text: 'Terms of Service',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
