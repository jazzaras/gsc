import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:gsc/marker.dart';

class ViewMapScreen extends StatelessWidget {
  const ViewMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // actionsIconTheme: IconThemeData(color: Colors.amber),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Color.fromRGBO(27, 27, 226, 0.97),
            size: 40,
          ),
        ),
      ),
      body: Stack(
        children: [
          Hero(
            tag: "hello",
            child: FlutterMap(
              options: const MapOptions(
                initialCenter: LatLng(21.5292, 39.1611),
                initialZoom: 10,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 70),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                hintText: "Search...",
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  // borderSide: BorderSide(color: Colors.grey, wid),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
