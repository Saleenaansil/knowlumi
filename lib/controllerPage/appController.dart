

import 'package:get/get.dart';

class Appcontroller extends GetxController{
  
var isPasswordVisible = false.obs; // False means password is hidden

  // Toggle the password visibility
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}