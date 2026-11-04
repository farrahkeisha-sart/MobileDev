
import 'package:belajarfluuter/controller/menu_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  final menuController = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      appBar: AppBar(
        title: const Text('Menu Apps'),
      ),
      body: IndexedStack(
        index: menuController.selectedIndex.value, 
        children: menuController.listPages,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 138, 174, 206),
              ),
              child: Text(
                'Navigation',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home_filled),
              title: const Text("Home"),
              selected: menuController.selectedIndex.value == 0,
              onTap: () {
                menuController.changePage(0);
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.history_rounded),
              title: const Text("History"),
              selected: menuController.selectedIndex.value == 1,
              onTap: () {
                menuController.changePage(1);
                Get.back(); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_rounded),
              title: const Text("Profile"),
              selected: menuController.selectedIndex.value == 2,
              onTap: () {
                menuController.changePage(2);
                Get.back(); 
              },
            ),
          ],
        ),
      ),
    ));
  }
}