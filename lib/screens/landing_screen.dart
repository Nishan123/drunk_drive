import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:drunk_drive/widgets/primary_button.dart';
import 'package:drunk_drive/widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 12),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      color: AppColors.redColor,
                      child: Center(child: Text("LOGO")),
                    ),
                  ],
                ),
              ),
              Image.asset(
                "assets/images/landing_screen_image.png",
                height: 220,
                width: 220,
              ),
              Text(
                "Your Journey\nBegins Here",
                textAlign: TextAlign.center,
                style: AppTextStyles.h1,
              ),
              Flexible(
                child: Text(
                  "Connect with trusted drivers for your own vehicle\nand reach your destination with ease",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.subtitle,
                ),
              ),
              SizedBox(height: mq.height * 0.06),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  spacing: 16,
                  children: [
                    PrimaryButton(
                      borderRadius: 20,
                      onTap: () {
                        context.goNamed("login");
                      },
                      backgroundColor: AppColors.primaryColor,
                      foregroundColor: AppColors.whiteColor,
                      text: "Log In",
                      height: 55,
                    ),
                    SecondaryButton(
                      borderRadius: 20,

                      onTap: () {
                        context.goNamed("login");
                      },
                      height: 55,
                      text: "Sign Up",
                      borderColor: AppColors.primaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
