import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:drunk_drive/widgets/primary_button.dart';
import 'package:drunk_drive/widgets/privacy_policy_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        title: Text("OTP Verification"),
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              SizedBox(height: 120),
              Text(
                "Enter OTP sent to your phone number for verification",
                style: AppTextStyles.normal,
              ),
              SizedBox(height: 10),
              Pinput(
                length: 5,
                controller: otpController,
                enabled: true,
                defaultPinTheme: PinTheme(
                  height: 62,
                  width: 62,
                  textStyle: AppTextStyles.h4,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              Spacer(),
              PrivacyPolicyText(),
              SizedBox(height: 12),

              PrimaryButton(
                height: 60,
                borderRadius: 18,
                onTap: () {
                  context.pushNamed("home");
                },
                backgroundColor: AppColors.primaryColor,
                foregroundColor: AppColors.whiteColor,
                text: "Next",
              ),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
