import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RainBox extends StatelessWidget {
  const RainBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Rainfall Rate",
            style:
                TextStyle(fontSize: 20, color: Color.fromRGBO(27, 27, 226, 1)),
          ),
          const Gap(20),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(27, 27, 226, 1),
                borderRadius: BorderRadius.circular(20)),
            height: 120,
            width: double.infinity,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        width: 40,
                        "assets/images/cloud.png",
                      ),
                      const Text(
                        "Mon",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Gap(15),
                      const Text(
                        "65%",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        width: 40,
                        "assets/images/cloud.png",
                      ),
                      const Text(
                        "Mon",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Gap(15),
                      const Text(
                        "65%",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        width: 40,
                        "assets/images/cloud.png",
                      ),
                      const Text(
                        "Mon",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Gap(15),
                      const Text(
                        "65%",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        width: 40,
                        "assets/images/cloud.png",
                      ),
                      const Text(
                        "Mon",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Gap(15),
                      const Text(
                        "65%",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        width: 40,
                        "assets/images/cloud.png",
                      ),
                      const Text(
                        "Mon",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Gap(15),
                      const Text(
                        "65%",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
