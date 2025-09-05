import 'package:drunk_drive/views/where_to/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class WhereToScreen extends StatelessWidget {
  const WhereToScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Google Map View
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: mq.height * 0.71,
                width: mq.width,
                child: GoogleMap(
                  zoomControlsEnabled: false,
                  mapToolbarEnabled: false,
                  padding: EdgeInsets.only(
                    bottom: 28.0,
                    left: mq.width * 0.40,
                    right: mq.width * 0.40,
                  ),
                  initialCameraPosition: CameraPosition(
                    target: LatLng(26.662928619113742, 87.27447134518353),
                    zoom: 14,
                  ),
                ),
              ),
            ),

            bottomSheet(topPosition: mq.height * 0.70 - 80),
          ],
        ),
      ),
    );
  }
}
