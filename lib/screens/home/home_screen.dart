import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:drunk_drive/screens/home/widgets/book_ride_container.dart';
import 'package:drunk_drive/screens/home/widgets/home_app_bar.dart';
import 'package:drunk_drive/widgets/custom_drawer.dart';
import 'package:drunk_drive/widgets/custom_search_bar.dart';
import 'package:drunk_drive/screens/home/widgets/interaction_button.dart';
import 'package:drunk_drive/widgets/recent_ride_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      drawer: CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              Builder(
                builder: (context) => HomeAppBar(
                  onProfileTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
              CustomSearchBar(
                searchController: searchController,
                hintText: "Search Your Destination",
              ),

              //book a ride container
              BookRideContainer(height: mq.height * 0.25),

              // 2x2 grid of home interaction buttons
              GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 12),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 2.3, // Adjust aspect ratio for better height
                physics: NeverScrollableScrollPhysics(),
                children: [
                  InteractionButton(
                    onTap: () {},
                    text: "Schedule Ride",
                    icon: Icons.calendar_month_rounded,
                  ),
                  InteractionButton(
                    onTap: () {},
                    text: "My Bookings",
                    icon: Icons.list_alt_rounded,
                  ),
                  InteractionButton(
                    onTap: () {},
                    text: "My Vehicles",
                    icon: Icons.directions_car_rounded,
                  ),
                  InteractionButton(
                    onTap: () {},
                    text: "Support",
                    icon: Icons.headset_mic_rounded,
                  ),
                ],
              ),

              // Recent Ride lists
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Recent Rides",
                          style: AppTextStyles.h3.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(0),
                          ),
                          child: Text("View All"),
                        ),
                      ],
                    ),

                    // ride history details card
                    RecentRideCard(),
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
