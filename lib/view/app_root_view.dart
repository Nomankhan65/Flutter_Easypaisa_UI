import 'package:easypaisaclone/view/account_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_view.dart';

class AppRootView extends StatefulWidget {
  const AppRootView({super.key});



  @override
  State<AppRootView> createState() => _AppRootViewState();
}

class _AppRootViewState extends State<AppRootView> {
  int currentIndex = 0;
  static   List<Widget> screenList = [
    HomeView(),
   AccountView(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:screenList[currentIndex], // Display the screen based on the selected index
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex, // Active tab index
          selectedItemColor:Colors.green, // Replace with `primaryLight` if it's a defined color
          selectedLabelStyle: const TextStyle(fontFamily: 'Mulish'),
          unselectedLabelStyle: const TextStyle(fontFamily: 'Mulish'),
          showUnselectedLabels: true,
          onTap: (index) {
            setState(() {
              currentIndex = index; // Update the selected tab index
            });
          },
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.home),
                label:'home'.tr
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person_pin),
                label:'account'.tr
            ),
          ],
        ),
      ),
    );
  }
}

