import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:drunk_drive/widgets/primary_button.dart';
import 'package:drunk_drive/widgets/secondary_button.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class RecentRideCard extends StatelessWidget {
  const RecentRideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.blackColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 12,
        children: [
          Row(
            children: [
              Text("Date", style: AppTextStyles.h4),
              Spacer(),
              Text("PRICE", style: AppTextStyles.h4),
            ],
          ),
          SizedBox(
            child: Column(
              spacing: 10,
              children: [
                LocationWidget(locationName: "Pickup Location"),
                LocationWidget(
                  locationName: "Destination Location",
                  isPickup: false,
                ),
              ],
            ),
          ),
          Row(
            spacing: 12,
            children: [
              Expanded(
                child: SecondaryButton(
                  borderWidth: 0.6,
                  onTap: () {},
                  borderColor: AppColors.redColor,
                  text: "Details",
                  foregroundColor: AppColors.blackColor,
                ),
              ),
              Expanded(
                child: PrimaryButton(
                  onTap: () {},
                  backgroundColor: AppColors.secondaryColor,
                  foregroundColor: AppColors.primaryColor,
                  text: "Rebook",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LocationWidget extends StatelessWidget {
  final bool? isPickup;
  final String locationName;
  const LocationWidget({super.key, this.isPickup, required this.locationName});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 4),
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.secondaryColor,
          ),
          child: Center(
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isPickup ?? true
                    ? AppColors.primaryColor
                    : AppColors.greenColor,
              ),
              child: Center(
                child: Icon(
                  isPickup ?? true ? FeatherIcons.mapPin : FeatherIcons.flag,
                  color: AppColors.whiteColor,
                  size: 12,
                ),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(locationName, style: AppTextStyles.h5),
            Text(
              isPickup ?? true ? "Pickup point" : "Destination",
              style: AppTextStyles.normal.copyWith(
                color: Colors.black38,
                height: 0.8,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
