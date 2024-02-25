import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gsc/providers/TabsProvider.dart';

class CustomNavigation extends ConsumerWidget {
  const CustomNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var size = MediaQuery.of(context).size;

    var curr = ref.watch(TabsProvider);

    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: const Color.fromRGBO(73, 90, 191, 0.43),
            ),
          ),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  ref.read(TabsProvider.notifier).set(0);
                },
                icon: Icon(
                  Icons.cloud_outlined,
                  color: (curr == 0) ? Color.fromARGB(255, 0, 112, 204) : null,
                  size: 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  ref.read(TabsProvider.notifier).set(1);
                },
                icon: Icon(
                  Icons.location_on_outlined,
                  color: (curr == 1)
                      ? const Color.fromARGB(255, 0, 112, 204)
                      : null,
                  size: 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  ref.read(TabsProvider.notifier).set(2);
                },
                icon: Icon(
                  Icons.notifications_outlined,
                  color: (curr == 2) ? Color.fromARGB(255, 0, 112, 204) : null,
                  size: 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  ref.read(TabsProvider.notifier).set(3);
                },
                icon: Icon(
                  Icons.article_outlined,
                  color: (curr == 3) ? Color.fromARGB(255, 0, 112, 204) : null,
                  size: 35,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
