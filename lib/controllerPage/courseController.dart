import 'package:get/get.dart';

class Coursecontroller extends GetxController{
  var selectedCourse=RxnString();
  void selectCourse(String course) {
    selectedCourse.value = course;
  }
}