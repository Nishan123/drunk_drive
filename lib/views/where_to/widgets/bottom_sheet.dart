import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:drunk_drive/views/where_to/widgets/where_to_button.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

Widget bottomSheet({required double topPosition}) {
  return // Bottom Sheet
  Positioned(
    top: topPosition,
    left: 0,
    right: 0,
    bottom: 0,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 8, left: 8),
          child: Row(
            children: [
              // back button 
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.lightBlack.withAlpha(90),
                ),
                child: Icon(
                  Icons.arrow_back_rounded,
                  size: 34,
                  color: AppColors.whiteColor,
                ),
              ),
              Spacer(),

              // my location button
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 4,
                      blurRadius: 8,
                      color: AppColors.lightBlack,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.my_location_outlined,
                  size: 34,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),

        Expanded(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(26),
                topRight: Radius.circular(26),
              ),
            ),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FeatherIcons.sun,size: 30,),
                    Text("Good morning Username")
                  ],
                ),

                whereToButton(backgroundColor: AppColors.primaryColor, onTap: (){}, text: "Find a driver",height: 58,borderRadius: 18)
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
