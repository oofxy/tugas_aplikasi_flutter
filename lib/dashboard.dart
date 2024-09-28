import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_aplikasi_musik/colors/color.dart';
import 'package:tugas_aplikasi_musik/menus/home_menu.dart';
import 'package:tugas_aplikasi_musik/menus/profile_menu.dart';
import 'package:tugas_aplikasi_musik/menus/search_menu.dart';
import 'Controller/dashboard_controller.dart';
import 'menus/library_menu/library_menu.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController =
        Get.put(DashboardController());

    final List<Widget> menus = [
      HomeMenu(),
      SearchMenu(),
      LibraryMenu(),
      ProfileMenu()
    ];

    return Obx(() {
      return Scaffold(
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          currentIndex: dashboardController.selectedIndex.value,
          onTap: dashboardController.changeMenu,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: color().black2,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: color().black2,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music_rounded),
              label: "Library",
              backgroundColor: color().black2,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: "Prfoile",
              backgroundColor: color().black2,
            )
          ],
        ),
      );
    });
  }
}
