import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpField extends StatelessWidget {
  const OtpField({
    super.key,
    required this.otpController,
  });

  final TextEditingController otpController;

  @override
  Widget build(BuildContext context) {
    return Pinput(
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
    );
  }
}
