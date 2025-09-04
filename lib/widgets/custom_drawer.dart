import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:drunk_drive/widgets/secondary_button.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  Widget listGroup({required List<DrawerList> drawerLists}) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.iconBackgroundColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(children: [...drawerLists]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.86,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Padding(
        padding: EdgeInsetsGeometry.only(right: 12, left: 12, top: 40),
        child: SingleChildScrollView(
          child: Column(
            spacing: 8,
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  Column(children: [Text("Username"), Text("+1 91234567")]),
                ],
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.iconBackgroundColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 12,
                  children: [
                    Text("WALLET BALANCE", style: AppTextStyles.h5.copyWith(fontWeight: FontWeight.w500)),
                    Text("\$ 60.00", style: AppTextStyles.h1),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.blackColor,
                        foregroundColor: AppColors.whiteColor,
                        elevation: 0,
                        splashFactory: InkRipple.splashFactory,
                      ),
                      onPressed: () {},
                      child: Text("ADD CREDIT"),
                    ),
                  ],
                ),
              ),
              listGroup(
                drawerLists: [
                  DrawerList(
                    prefixIcon: Icons.emoji_people_rounded,
                    title: "Book a Ride",
                  ),
                  DrawerList(
                    prefixIcon: Icons.favorite_rounded,
                    title: "Favorite Location",
                  ),
                  DrawerList(
                    prefixIcon: Icons.list_alt_rounded,
                    title: "My Bookings",
                  ),
                  DrawerList(
                    prefixIcon: Icons.directions_car_rounded,
                    title: "My Vehicles",
                  ),
                ],
              ),
              listGroup(
                drawerLists: [
                  DrawerList(
                    prefixIcon: Icons.credit_card,
                    title: "Payment History",
                  ),
                  DrawerList(
                    prefixIcon: Icons.discount_rounded,
                    title: "Discount & Gifts",
                  ),
                ],
              ),
              listGroup(
                drawerLists: [
                  DrawerList(
                    prefixIcon: Icons.settings_rounded,
                    title: "Settings",
                  ),
                  DrawerList(
                    prefixIcon: Icons.notifications_rounded,
                    title: "Notifications",
                  ),
                  DrawerList(
                    prefixIcon: Icons.info_rounded,
                    title: "Information",
                  ),
                ],
              ),
              SizedBox(height: 20),
              SecondaryButton(
                onTap: (){},
                text: "Log Out",
                borderColor: AppColors.redColor,
                icon: Icons.logout,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerList extends StatelessWidget {
  final IconData prefixIcon;
  final String title;
  const DrawerList({super.key, required this.prefixIcon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(prefixIcon, color: AppColors.primaryColor),
      title: Text(
        title,
        style: AppTextStyles.h5.copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }
}
