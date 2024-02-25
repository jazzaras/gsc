import 'package:flutter/material.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';

class MyMarker extends StatelessWidget {
  const MyMarker(
      {super.key, required this.color, required this.lan, required this.lng});
  final Color color;
  final double lan;
  final double lng;
  @override
  Widget build(BuildContext context) {
    return LocationMarkerLayer(
      position: LocationMarkerPosition(
        latitude: lan,
        longitude: lng,
        accuracy: 1,
      ),
      style: LocationMarkerStyle(
          markerSize: Size(50, 50),
          marker: Stack(
            children: [
              Image.asset(
                "assets/images/pointer.png",
              ),
              Positioned(
                left: 3.5,
                top: 4,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100), color: color),
                ),
              )

              // // Icon(
              // //   Icons.location_on_outlined,
              // //   size: 40,
              // //   color: Colors.black,
              // // ),
              // Icon(
              //   Icons.location_on,
              //   size: 50,
              //   color: color,
              // ),
              // Icon(
              //   Icons.location_on_outlined,
              //   size: 50,
              //   color: Colors.black,
              // ),
            ],
          )),
    );
  }
}
