import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TodayWeather extends StatelessWidget {
  const TodayWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "TodaysWeather",
          style: TextStyle(fontSize: 20, color: Color.fromRGBO(27, 27, 226, 1)),
        ),
        const Gap(20),
        Container(
          width: double.infinity,
          height: 100,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(40, 103, 227, 0.28),
                Color.fromRGBO(29, 100, 243, 0),
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SUN",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[800],
                      fontSize: 15,
                    ),
                  ),
                  const Gap(12),
                  const Text(
                    "SEP 12",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Image.asset(
                width: 80,
                "assets/images/cloud1.png",
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Thunderstorms",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 245, 167, 0),
                      fontSize: 17,
                    ),
                  ),
                  const Gap(12),
                  Text(
                    "ssw 11 km/h",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[800],
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.navigate_next))
            ],
          ),
        ),
      ],
    );
  }
}
