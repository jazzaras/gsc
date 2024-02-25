import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PotentialRisk extends StatelessWidget {
  const PotentialRisk({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Potential Risk",
          style: TextStyle(fontSize: 20, color: Color.fromRGBO(27, 27, 226, 1)),
        ),
        const Gap(20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("SUN"),
            Text("MON"),
            Text("TUE"),
            Text("WED"),
            Text("THU"),
            Text("FRI"),
            Text("SAT"),
          ],
        ),
        const Gap(20),
        Center(
          child: Image.asset(
            "assets/images/chart.png",
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }
}
