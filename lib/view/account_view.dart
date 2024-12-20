import 'package:easypaisaclone/view_model/account_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountView extends StatelessWidget {
    AccountView({super.key});

  final controller = Get.put(AccountViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text(
              'account'.tr,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Text('setting'.tr),
          ),
          ListTile(title:Text('language'.tr), trailing: GestureDetector(
            onTap: () {
              controller
                  .toggleLanguage(); // Toggle language using GetX controller
            },
            child: Container(
              width: 120,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[300],
              ),
              child: Stack(
                children: [
                  Obx(() => AnimatedAlign(
                    alignment: controller.isEnglish.value
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    duration: Duration(milliseconds: 300),
                    child: Container(
                      width: 75,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          controller.isEnglish.value ? 'English' : 'اردو',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),),
          ListTile(
            title: Text('theme'.tr),
            trailing: GestureDetector(
              onTap: () {
                controller.toggleThemeMode();
              },
              child: Container(
                width: 120,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[300],
                ),
                child: Obx(() {
                  return Stack( // Use Stack for better alignment control
                    children: [
                      AnimatedAlign(
                        alignment: controller.isLight.value
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        duration: Duration(milliseconds: 300), // Add animation for smooth transition
                        child: Container(
                          width: 75,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              controller.isLight.value ? 'Light' : 'Dark',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
