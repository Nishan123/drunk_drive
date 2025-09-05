import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/views/history/widgets/action_button.dart';
import 'package:drunk_drive/views/history/widgets/custom_divider.dart';
import 'package:drunk_drive/views/history/widgets/driver_info_card.dart';
import 'package:drunk_drive/views/history/widgets/payment_details.dart';
import 'package:drunk_drive/views/history/widgets/ride_info.dart';
import 'package:drunk_drive/views/history/widgets/to_from_details_widget,.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class HistoryDetailsScreen extends StatelessWidget {
  const HistoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(title: Text("Date"), centerTitle: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: mq.size.height - mq.padding.top,
            ),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  spacing: 12,
                  children: [
                    // Map view container
                    Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      decoration: BoxDecoration(
                        color: AppColors.lightBlack,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Map View")),
                    ),
                    toFromDetailsWidget(),
                    customDivider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        rideInfo(
                          icon: FeatherIcons.clock,
                          data: "30 min",
                          title: "Duration",
                        ),
                        rideInfo(
                          icon: Icons.route_outlined,
                          data: "30 min",
                          title: "Distance",
                        ),
                        rideInfo(
                          icon: Icons.directions_car_rounded,
                          data: "Swift",
                          title: "Car",
                        ),
                      ],
                    ),
                    customDivider(),
                    driverInfoCard(
                      name: 'Driver Name',
                      phoneNo: '+1 12345678',
                      onCallTap: () {},
                      onMsgTap: () {
                        
                      },
                    ),
                    customDivider(),

                    // Actions Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        actionButton(
                          icon: FeatherIcons.fileText,
                          text: "Receipt",
                          onTap: () {},
                        ),
                        actionButton(
                          icon: FeatherIcons.messageSquare,
                          text: "Support",
                          onTap: () {},
                        ),
                        actionButton(
                          icon: FeatherIcons.repeat,
                          text: "Return route",
                          onTap: () {},
                        ),
                      ],
                    ),
                    customDivider(),
                    // payment info
                    paymentDetails(
                      discountAmt: "0",
                      totalAmt: "20",
                      paidAmt: "20",
                    ),
                   
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
