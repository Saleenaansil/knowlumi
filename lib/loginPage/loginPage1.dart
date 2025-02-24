import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/LearnPage/homeLearnPage.dart';
import 'package:knowlumi/LearnPage/myClassPage.dart';
import 'package:knowlumi/LearnPage/profilePicture.dart';
import 'package:knowlumi/controllerPage/appController.dart';
import 'package:knowlumi/customwidget/customColor.dart';
import 'package:knowlumi/customwidget/customText.dart';
import 'package:knowlumi/loginPage/login2a.dart';
import 'package:knowlumi/loginPage/loginPage2.dart'; // Import custom widgets

class LoginPage1 extends StatelessWidget {
  LoginPage1({super.key});
  final Appcontroller appcontroller = Get.put(Appcontroller());
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Welcome Text
                SizedBox(height: screenHeight * 0.15), // Responsive spacing
                const CustomText(
                  text: "Welcome 👋🏼",
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1F2D43),
                ),
                SizedBox(height: screenHeight * 0.01),
                const CustomText(
                  text: "Login to continue",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1F2D43),
                ),

                // Phone number input fields (Country Code + Mobile Number)
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.03),
                  child: Row(
                    children: [
                      // Country Code TextField
                      SizedBox(
                        width: screenWidth * 0.15, // 15% of screen width
                        height: screenHeight * 0.07, // 7% of screen height
                        child: const TextField(
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff1F2D43)),
                          decoration: InputDecoration(
                            hintText: '+91',
                            fillColor: Color(0xFFe4e4ec),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                              borderSide: BorderSide(
                                color: Color(0xFFe4e4ec),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                              borderSide: BorderSide(color: Color(0xFFe4e4ec)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                              borderSide: BorderSide(color: Color(0xFFe4e4ec)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2), // Responsive spacing
                      // Mobile Number TextField
                      Expanded(
                        child: SizedBox(
                          height: screenHeight * 0.07, // 7% of screen height
                          child: const TextField(
                            style: TextStyle(fontSize: 12, color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'Enter your mobile number',
                              fillColor: Color(0xFFe4e4ec),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFFe4e4ec)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFe4e4ec)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Password TextField
                SizedBox(height: screenHeight * 0.02),
                Row(
                  children: [
                    // Password Icon TextField
                    SizedBox(
                      width: screenWidth * 0.15, // 15% of screen width
                      height: screenHeight * 0.07, // 7% of screen height
                      child: const TextField(
                        style: TextStyle(fontSize: 12, color: Colors.black),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xff1F2D43),
                            size: 18,
                          ), // Password icon
                          fillColor: Color(0xFFe4e4ec),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                            borderSide: BorderSide(color: Color(0xFFe4e4ec)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFe4e4ec)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2), // Responsive spacing
                    // Expanded Password TextField with Eye Icon
                    Expanded(
                      child: SizedBox(
                        height: screenHeight * 0.07, // 7% of screen height
                        child: Obx(
                          () => TextField(
                            obscureText: !appcontroller.isPasswordVisible.value,
                            style: TextStyle(fontSize: 12, color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'Password',
                              fillColor: Color(0xFFe4e4ec),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFFe4e4ec)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                                borderSide:
                                    BorderSide(color: Color(0xFFe4e4ec)),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  appcontroller.isPasswordVisible.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Color(0xff1F2D43),
                                  size: 20,
                                ),
                                onPressed: () {
                                  appcontroller.togglePasswordVisibility();
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // Gradient Continue Button
                SizedBox(height: screenHeight * 0.03),
                Container(
                  width: double.infinity,
                  height: screenHeight * 0.07, // 7% of screen height
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Customcolor.primaryLight,
                        Customcolor.primaryDark
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {
                      Get.off(Homelearnpage());
                    },
                    child: const CustomText(
                      text: "Continue",
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),

                // Forgot Password Button
                SizedBox(height: screenHeight * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffE9F1FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        minimumSize: Size(
                            0, 27), // Fix the size (width: 125px, height: 27px)
                      ),
                      onPressed: () {
                        print("Forgot Password button tapped");
                        Get.off(LoginPage2a());
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1F2D43),
                        ),
                      ),
                    ),
                  ],
                ),

                // OR Divider
                SizedBox(height: screenHeight * 0.06),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0xff1F2D43CC),
                        thickness: 1,
                        endIndent: 8,
                      ),
                    ),
                    SizedBox(width: 6),
                    CustomText(
                      text: "OR",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    SizedBox(width: 6),
                    Expanded(
                      child: Divider(
                        color: Color(0xff1F2D43CC),
                        thickness: 1,
                        indent: 8,
                      ),
                    ),
                  ],
                ),

                // Register Now Section
                SizedBox(height: screenHeight * 0.06),
                Container(
                  height: screenHeight * 0.07, // 7% of screen height
                  decoration: BoxDecoration(
                    color: Color(0x00000000),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Color(0xffDEE5EC),
                      width: .8,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Don't have an account tapped");
                        },
                        child: const Text(
                          "Don’t have an account? ",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff1F2D43),
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      GestureDetector(
                        onTap: () {
                          Get.off(() => const LoginPage2());
                          print("Register Now button tapped");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            // color:
                            //     Colors.blue, // Change to your preferred color
                            borderRadius: BorderRadius.circular(18),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.04, vertical: 8),
                          child: const Text(
                            "Register Now",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1F2D43),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // Bottom App Bar with Terms and Privacy Policy
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.03),
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color(0xff1F2D43),
              ),
              children: <TextSpan>[
                TextSpan(
                  text:
                      "By creating or logging into an account you’re agreeing with our ",
                ),
                TextSpan(
                  text: "Terms and conditions",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xff1F2D43),
                  ),
                ),
                TextSpan(text: " and "),
                TextSpan(
                  text: "Privacy policy",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xff1F2D43),
                  ),
                ),
                TextSpan(
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
