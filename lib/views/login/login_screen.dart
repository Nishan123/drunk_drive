import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:drunk_drive/views/login/widgets/phone_field.dart';
import 'package:drunk_drive/widgets/primary_button.dart';
import 'package:drunk_drive/widgets/privacy_policy_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 12,
              children: [
                SizedBox(height: 40),

                SizedBox(child: Image.asset("assets/images/login_image.png")),
                Text("Get Started !", style: AppTextStyles.h2),
                Text(
                  "Please enter your phone no to verify\nyour account",
                  style: AppTextStyles.normal,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),

                // phone no field
                PhoneField(),
                SizedBox(height: 52),
                PrivacyPolicyText(),
                SizedBox(height: 10),

                PrimaryButton(
                  borderRadius: 18,
                  height: 60,
                  onTap: () {
                    context.pushNamed("otp");
                  },
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.whiteColor,
                  text: "Next",
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
