import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:gsc/providers/TabsProvider.dart';
import 'package:gsc/screens/Map.dart';
import 'package:gsc/screens/Notifications.dart';
import 'package:gsc/screens/home.dart';
import 'package:gsc/screens/report.dart';

import 'CustomNavigation.dart';

class Tabs extends ConsumerStatefulWidget {
  const Tabs({super.key});

  @override
  ConsumerState<Tabs> createState() => _TabsState();
}

class _TabsState extends ConsumerState<Tabs> {
  var tabs = [HomeScreen(), MapScreen(), NotificationsScreen(), ReportScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,

      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   title: const Text(
      //     "Noufy",
      //     style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.black,
      //     ),
      //   ),
      //   actions: const [
      //     Icon(
      //       Icons.person,
      //       color: Colors.black,
      //     ),
      //     SizedBox(
      //       width: 20,
      //     )
      //   ],
      // ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                colors: [
                  Color(0xffBCC8D6),
                  Color(0xffF2F4F7),
                ],
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: tabs[ref.watch(TabsProvider)],
              ),
            ),
          ),
          const CustomNavigation()
        ],
      ),
    );
  }
}
