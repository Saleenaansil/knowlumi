import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/customwidget/customColor.dart';
import 'package:knowlumi/customwidget/customText.dart';
import 'package:knowlumi/selectedCourse/selectedCourse.dart';

class Registerpage extends StatelessWidget {
  Registerpage({super.key});

  final List<String> states = ["State 1", "State 2", "State 3"];
  final List<String> districts = ["District 1", "District 2", "District 3"];
  final List<String> dob = ["2000-01-01", "2001-01-02", "2002-01-03"];
  final List<String> identities = ["Student", "Teacher", "Parent"];

  @override
  Widget build(BuildContext context) {
    String? selectedState;
    String? selectedDistrict;
    String? selectedDob;
    String? selectedIdentity;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 21.0, top: 118.0), // Padding applied to the entire Column
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Aligns children to the start (left)
            children: [
              const CustomText(
                text: "Register to KNOWLUMI",
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0xff1F2D43),
              ),
              SizedBox(height: 5), // Space between the two texts
              const CustomText(
                text: "Enter your info to register",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff1F2D43),
              ),
              SizedBox(
                height: 24,
              ),
              const Padding(
                padding: const EdgeInsets.only(right: 21),
                child: SizedBox(
                  height: 54,
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      hintText: "Enter full name",
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 58, 79, 112),
                          fontWeight: FontWeight.w300,
                          fontSize: 12
                          // Color for hintText
                          ),
                      fillColor: Color(0xFFe4e4ec),
                      filled: true,
                      border: InputBorder.none, // Remove the border color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                Colors.transparent), // Ensure no border color
                        borderRadius: BorderRadius.all(
                            Radius.circular(16)), // Set border radius to 16
                      ),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.only(right: 21),
                child: SizedBox(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter email address",
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 58, 79, 112),
                          fontWeight: FontWeight.w300,
                          fontSize: 12 // Color for hintText
                          ),
                      fillColor: Color(0xFFe4e4ec),
                      filled: true,
                      border: InputBorder.none, // Remove the border color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                Colors.transparent), // Ensure no border color
                        borderRadius: BorderRadius.all(
                            Radius.circular(16)), // Set border radius to 16
                      ),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 14),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 21),
                    child: SizedBox(
                      height: 54,
                      child: DropdownButtonFormField<String>(
                        value: selectedDistrict,
                        hint: const Text(
                          "Select State",
                          style: TextStyle(
                              color: Color.fromARGB(255, 58, 79, 112),
                              fontWeight: FontWeight.w300,
                              fontSize: 12),
                        ),
                        onChanged: (String? value) {
                          selectedDistrict = value;
                        },
                        items: districts
                            .map((district) => DropdownMenuItem(
                                  value: district,
                                  child: Text(district),
                                ))
                            .toList(),
                        decoration: const InputDecoration(
                          fillColor: Color(0xFFe4e4ec),
                          filled: true,
                          border: InputBorder.none, // Remove the border color
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .transparent), // Ensure no border color
                            borderRadius: BorderRadius.all(
                                Radius.circular(16)), // Set border radius to 16
                          ),
                          focusedBorder: OutlineInputBorder(),
                        ),
                        icon: Image.asset(
                          'asset/Vector.png', // Path to your PNG file
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.only(right: 21),
                child: SizedBox(
                  height: 54,
                  child: DropdownButtonFormField<String>(
                    value: selectedDistrict,
                    hint: const Text(
                      "Select District",
                      style: TextStyle(
                          color: Color.fromARGB(255, 58, 79, 112),
                          fontWeight: FontWeight.w300,
                          fontSize: 12),
                    ),
                    onChanged: (String? value) {
                      selectedDistrict = value;
                    },
                    items: districts
                        .map((district) => DropdownMenuItem(
                              value: district,
                              child: Text(district),
                            ))
                        .toList(),
                    decoration: const InputDecoration(
                      fillColor: Color(0xFFe4e4ec),
                      filled: true,
                      border: InputBorder.none, // Remove the border color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                Colors.transparent), // Ensure no border color
                        borderRadius: BorderRadius.all(
                            Radius.circular(16)), // Set border radius to 16
                      ),
                      focusedBorder: OutlineInputBorder(),
                    ),
                    icon: Image.asset(
                      'asset/Vector.png', // Path to your PNG file
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 14),

              // Date of Birth Dropdown
              Padding(
                padding: const EdgeInsets.only(right: 21),
                child: SizedBox(
                  height: 54,
                  child: DropdownButtonFormField<String>(
                    value: selectedDistrict,
                    hint: const Text(
                      "Select date of birth",
                      style: TextStyle(
                          color: Color.fromARGB(255, 58, 79, 112),
                          fontWeight: FontWeight.w300,
                          fontSize: 12),
                    ),
                    onChanged: (String? value) {
                      selectedDistrict = value;
                    },
                    items: districts
                        .map((district) => DropdownMenuItem(
                              value: district,
                              child: Text(district),
                            ))
                        .toList(),
                    decoration: const InputDecoration(
                      fillColor: Color(0xFFe4e4ec),
                      filled: true,
                      border: InputBorder.none, // Remove the border color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                Colors.transparent), // Ensure no border color
                        borderRadius: BorderRadius.all(
                            Radius.circular(16)), // Set border radius to 16
                      ),
                      focusedBorder: OutlineInputBorder(),
                    ),
                    icon: Image.asset(
                      'asset/Vector.png', // Path to your PNG file
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),

              // Who am I Dropdown
              Padding(
                padding: const EdgeInsets.only(right: 21),
                child: SizedBox(
                  height: 54,
                  child: DropdownButtonFormField<String>(
                    value: selectedDistrict,
                    hint: const Text(
                      "Who am i?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 58, 79, 112),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    onChanged: (String? value) {
                      selectedDistrict = value;
                    },
                    items: districts
                        .map((district) => DropdownMenuItem(
                              value: district,
                              child: Text(district),
                            ))
                        .toList(),
                    decoration: const InputDecoration(
                      fillColor: Color(0xFFe4e4ec),
                      filled: true,
                      border: InputBorder.none, // Remove the border color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                Colors.transparent), // Ensure no border color
                        borderRadius: BorderRadius.all(
                            Radius.circular(16)), // Set border radius to 16
                      ),
                      focusedBorder: OutlineInputBorder(),
                    ),
                    icon: Image.asset(
                      'asset/Vector.png', // Path to your PNG file
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 13),
              //           // Continue Button
              Padding(
                padding: const EdgeInsets.only(right: 21),
                child: Container(
                  width: double.infinity,
                  height: 54,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Customcolor.primaryLight,
                        Customcolor.primaryDark
                      ],
                      begin: Alignment.topCenter, // Start at the top center
                      end: Alignment.bottomRight, // End at the bottom right
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.transparent, // Transparent to show gradient
                      shadowColor: Colors.transparent, // Remove shadow
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Get.off(Selectedcourse());
                    },
                    child: const CustomText(
                      text: "Continue",
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color(0xff1F2D43),
              ),
              children: <TextSpan>[
                const TextSpan(
                  text:
                      "By creating or logging into an account you’re agreeing with our ",
                ),
                TextSpan(
                  text: "Terms and conditions",
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xff1F2D43),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Action for "Terms and conditions" tap
                      print("Terms and Conditions tapped");
                    },
                ),
                const TextSpan(text: " and "),
                TextSpan(
                  text: "Privacy policy",
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xff1F2D43),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Action for "Privacy policy" tap
                      print("Privacy Policy tapped");
                    },
                ),
                const TextSpan(
                  text: ".",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
