import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountViewModel extends GetxController {
  RxBool isEnglish = true.obs; // Observable variable to track the language
  RxBool isLight = true.obs;
  void toggleLanguage() {
    isEnglish.value = !isEnglish.value;
    isEnglish.value
        ? Get.updateLocale(Locale('en', 'US'))
        : Get.updateLocale(Locale('ur', 'PK'));
    // Toggle language
  }

  void toggleThemeMode() {
    isLight.value = !isLight.value;
    // Change theme
    if (isLight.value) {
      Get.changeTheme(ThemeData.light());
    } else {
      Get.changeTheme(ThemeData.dark());
    }

  }
}
