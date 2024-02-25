import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var notifications = [
      "Al-Hamra Corniche",
      "Al-Marwa District",
      "Al-Hamra Corniche",
      "Al-Marwa District",
    ];
    int count = 0;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Notifications",
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
        Expanded(
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              if (index % 2 == 0) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 1),
                  child: Divider(
                    color: Color.fromARGB(255, 168, 168, 168),
                    thickness: 1,
                  ),
                );
              }
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.circle, color: Colors.red, size: 20),
                  const Gap(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Be Careful",
                        style: TextStyle(
                          color: Color.fromARGB(255, 33, 72, 243),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          "You are near from ${notifications[count++]} ",
                          style: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  )
                ],
              );
            },
            itemCount: notifications.length * 2,
          ),
        )
      ],
    );
  }
}
