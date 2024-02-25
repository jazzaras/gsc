import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:gap/gap.dart';
import 'package:gsc/marker.dart';
import 'package:gsc/screens/ViewMap.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Map",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(27, 27, 226, 1),
              ),
            ),
            Image.asset("assets/images/prof.png")
          ],
        ),
        const Gap(10),
        const Text(
            "Here you can check on the weather and predict if there’s rain in your region or not"),
        const Gap(10),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(21, 52, 231, 0.97),
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            children: [
              SizedBox(
                height: size.height / 1.6,
                width: size.width - 120,
                child: Stack(
                  children: [
                    IgnorePointer(
                      child: Hero(
                        tag: "hello",
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: FlutterMap(
                            options: const MapOptions(
                              initialCenter: LatLng(21.5292, 39.1611),
                              initialZoom: 10,
                            ),
                            children: [
                              TileLayer(
                                urlTemplate:
                                    'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                userAgentPackageName: 'com.example.app',
                              ),
                              CurrentLocationLayer(), // <-- add layer here
                              const MyMarker(
                                  color: Color.fromARGB(255, 119, 8, 0),
                                  lan: 21.5292,
                                  lng: 39.1611),
                              const MyMarker(
                                  color: Color.fromARGB(255, 119, 8, 0),
                                  lan: 21.6292,
                                  lng: 39.1611),
                              const MyMarker(
                                  color: Color.fromARGB(255, 143, 98, 0),
                                  lan: 21.5292,
                                  lng: 39.2611),
                              const MyMarker(
                                  color: Color.fromARGB(255, 255, 217, 0),
                                  lan: 21.5592,
                                  lng: 39.1611),
                              const MyMarker(
                                  color: Color.fromARGB(255, 119, 8, 0),
                                  lan: 21.6292,
                                  lng: 39.1111),
                              const MyMarker(
                                  color: Color.fromARGB(255, 119, 8, 0),
                                  lan: 21.4292,
                                  lng: 39.2411)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: 120,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                backgroundColor:
                                    const Color.fromRGBO(27, 27, 226, 0.97)),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return ViewMapScreen();
                              }));
                            },
                            child: const Text(
                              "Start",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
