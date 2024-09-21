import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tugas_aplikasi_musik/menus/home_menu.dart';
import 'package:tugas_aplikasi_musik/menus/library_menu.dart';
import 'package:tugas_aplikasi_musik/menus/profile_menu.dart';
import 'package:tugas_aplikasi_musik/menus/search_menu.dart';
import 'Controller/dashboard_controller.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController =
    Get.put(DashboardController());

    final List<Widget> menus = [HomeMenu(), LibraryMenu(), SearchMenu(), ProfileMenu()];

    return Obx((){
      return Scaffold(
        appBar: AppBar(
          title: Text("Nav drawer example"),
        ),
        body: menus[dashboardController.selectedIndex.value],
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(decoration: BoxDecoration(color: Colors.red) ,child: Text("Drawer")),
              ListTile(
                trailing: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  dashboardController.changeMenu(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                trailing: Icon(Icons.account_circle),
                title: Text("Profile"),
                onTap: (){
                  dashboardController.changeMenu(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                trailing: Icon(Icons.history),
                title: Text("Transaction"),
                onTap: (){
                  dashboardController.changeMenu(2);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                trailing: Icon(Icons.history),
                title: Text("Transaction"),
                onTap: (){
                  dashboardController.changeMenu(3);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
    });
  }
}
