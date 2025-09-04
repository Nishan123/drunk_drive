import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

Widget toFromDetailsWidget() {
  return Column(
    spacing: 8,
    children: [
      Row(
        spacing: 4,
        children: [
          prefixCircle(fillColor: AppColors.primaryColor),
          Text("Pick up Location"),
          Spacer(),
          Text("TIME"),
        ],
      ),
      Row(
        spacing: 4,
        children: [
          prefixCircle(fillColor: AppColors.redColor),
          Text("Destination Location"),
          Spacer(),
          Text("TIME"),
        ],
      ),
    ],
  );
}

Widget prefixCircle({required Color fillColor}) {
  return Container(
    height: 20,
    width: 20,
    decoration: BoxDecoration(shape: BoxShape.circle, color: fillColor),
    child: Center(
      child: Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.lightBlack
        ),
      ),
    ),
  );
}
