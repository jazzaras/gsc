import 'package:flutter_riverpod/flutter_riverpod.dart';

class Tabs extends StateNotifier<int> {
  Tabs() : super(0);

  void set(int x) {
    state = x;
  }
}

final TabsProvider = StateNotifierProvider<Tabs, int>((ref) => Tabs());
