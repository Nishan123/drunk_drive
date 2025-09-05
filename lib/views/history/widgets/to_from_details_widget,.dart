import 'package:drunk_drive/widgets/recent_ride_card.dart';
import 'package:flutter/material.dart';

Widget toFromDetailsWidget() {
  return Column(
    spacing: 8,
    children: [
      Row(
        spacing: 4,
        children: [
          LocationWidget(locationName: "Location Name"),
          Spacer(),
          Text("TIME"),
        ],
      ),
      Row(
        spacing: 4,
        children: [
          LocationWidget(isPickup: false, locationName: "Location Name"),
          Spacer(),
          Text("TIME"),
        ],
      ),
    ],
  );
}
