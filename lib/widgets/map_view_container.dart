import 'package:drunk_drive/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapViewContainer extends StatelessWidget {
  final double height;
  const MapViewContainer({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.black12,
        border: Border.all(width: 0.6, color: AppColors.primaryColor),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: GoogleMap(
          zoomControlsEnabled: false,
          zoomGesturesEnabled: false,
          initialCameraPosition: CameraPosition(
            target: LatLng(27.707903296659733, 85.32477938418029),
            zoom: 14,
          ),
        ),
      ),
    );
  }
}
