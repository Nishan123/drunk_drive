import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class BookRideContainer extends StatelessWidget {
  final double height;
  const BookRideContainer({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return // Book a rider container
    Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
      padding: EdgeInsets.all(screenWidth * 0.05),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: AppColors.homeBannerBackgroundColor,
      ),
      height: height,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Are you ready for a",
                      style: AppTextStyles.h6.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Smooth Ride?",
                      style: AppTextStyles.h2.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  Text(
                    "Handover the key and get your destination safely",
                    style: AppTextStyles.normal.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.blue),
                        ),
                      ),
                      onPressed: () {},
                      child: FittedBox(
                        child: Text(
                          "Book a Driver",
                          style: AppTextStyles.normal.copyWith(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: screenWidth * 0.02),
            Expanded(
              flex: 2,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: height * 0.5,
                  maxWidth: screenWidth * 0.35,
                ),
                child: Image.asset(
                  "assets/images/banner_image.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
