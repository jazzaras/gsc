import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Report",
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
          const Gap(30),
          const Text(
            "Pinpoint an area",
            style:
                TextStyle(fontSize: 15, color: Color.fromRGBO(27, 27, 226, 1)),
          ),
          const Gap(15),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/Map.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(15),
          const Text(
            "Description of the area condition :",
            style:
                TextStyle(fontSize: 15, color: Color.fromRGBO(27, 27, 226, 1)),
          ),
          const Gap(10),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              filled: true,
              // contentPadding:
              //     EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              hintText:
                  "ex: it’s so dangerous to be exist there because the streets are slippery ...",
              fillColor: Colors.white,

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const Gap(20),
          const Text(
            "Describe the situation in one word :",
            style:
                TextStyle(fontSize: 15, color: Color.fromRGBO(27, 27, 226, 1)),
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text(
                    "Rainy",
                    style: TextStyle(
                        color: Color.fromARGB(255, 54, 54, 54), fontSize: 14),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[600],
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text(
                    "Risky",
                    style: TextStyle(
                        color: Color.fromARGB(255, 54, 54, 54), fontSize: 14),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text(
                    "Serious",
                    style: TextStyle(
                        color: Color.fromARGB(255, 54, 54, 54), fontSize: 14),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
