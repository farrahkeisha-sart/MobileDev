import 'package:belajarfluuter/menu/history.dart';
import 'package:belajarfluuter/menu/home.dart';
import 'package:belajarfluuter/menu/profile.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';



class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage (int index){
    selectedIndex.value = index;
  }

    List<Widget> listpages =[HomePage(),HistoryPage(),ProfilePage()];
}
