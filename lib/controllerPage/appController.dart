import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class Appcontroller extends GetxController {
  var isPasswordVisible = false.obs; // False means password is hidden
  RxInt selectedIndex = 0.obs;
  PageController pageController = PageController();
  var selectedCourse = "MERN".obs;
  var carouselIndex = 0.obs;
  // Toggle the password visibility
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
void changeIndex(int index) {
    selectedIndex.value = index;
    pageController.jumpToPage(index);
  }
  

  void changeCourse(String course) {
    selectedCourse.value = course;
  }

  void changeCarouselIndex(int index) {
    carouselIndex.value = index;
  }
}
