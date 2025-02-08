import 'package:get/get.dart';

class Appcontroller extends GetxController {
  var isPasswordVisible = false.obs; // False means password is hidden
  var selectedIndex = 0.obs;
  var selectedCourse = "MERN".obs;
   var carouselIndex = 0.obs; 
  // Toggle the password visibility
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  void changeCourse(String course) {
    selectedCourse.value = course;
  }
  void changeCarouselIndex(int index) {
    carouselIndex.value = index;
  }
}
