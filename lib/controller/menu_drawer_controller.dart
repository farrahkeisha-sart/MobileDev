
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:belajarfluuter/menu/home.dart';
import 'package:belajarfluuter/menu/history.dart';
import 'package:belajarfluuter/menu/profile.dart';

class MenuDrawerController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> listPages = [
    HomePage(),    // index 0
    HistoryPage(), // index 1
    ProfilePage(), // index 2
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
